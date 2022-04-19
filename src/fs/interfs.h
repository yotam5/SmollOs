#ifndef INTERFS_H
#define INTERFS_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
typedef unsigned int	UINT;	/* int must be 16-bit or 32-bit */
typedef unsigned char	BYTE;	/* char must be 8-bit */
typedef uint16_t		WORD;	/* 16-bit unsigned integer */
typedef uint32_t		DWORD;	/* 32-bit unsigned integer */
typedef uint64_t		QWORD;	/* 64-bit unsigned integer */
typedef WORD			WCHAR;	/* UTF-16 character type */


typedef DWORD FSIZE_t;
typedef DWORD LBA_t;



								/* ANSI/OEM code in SBCS/DBCS */
typedef char TCHAR;
#define _T(x) x
#define _TEXT(x) x

/* Filesystem object structure (FATFS) */

typedef struct {
	BYTE	fs_type;		/* Filesystem type (0:not mounted) */
	BYTE	pdrv;			/* Associated physical drive */
	BYTE	n_fats;			/* Number of FATs (1 or 2) */
	BYTE	wflag;			/* win[] flag (b0:dirty) */
	BYTE	fsi_flag;		/* FSINFO flags (b7:disabled, b0:dirty) */
	WORD	id;				/* Volume mount ID */
	WORD	n_rootdir;		/* Number of root directory entries (FAT12/16) */
	WORD	csize;			/* Cluster size [sectors] */

	DWORD	cdir;			/* Current directory start cluster (0:root) */

	DWORD	n_fatent;		/* Number of FAT entries (number of clusters + 2) */
	DWORD	fsize;			/* Size of an FAT [sectors] */
	LBA_t	volbase;		/* Volume base sector */
	LBA_t	fatbase;		/* FAT base sector */
	LBA_t	dirbase;		/* Root directory base sector/cluster */
	LBA_t	database;		/* Data base sector */
	LBA_t	winsect;		/* Current sector appearing in the win[] */
	BYTE	win[512];	/* Disk access window for Directory, FAT (and file data at tiny cfg) */
} FATFS;



/* Object ID and allocation information (FFOBJID) */

typedef struct {
	FATFS*	fs;				/* Pointer to the hosting volume of this object */
	WORD	id;				/* Hosting volume mount ID */
	BYTE	attr;			/* Object attribute */
	BYTE	stat;			/* Object chain status (b1-0: =0:not contiguous, =2:contiguous, =3:fragmented in this session, b2:sub-directory stretched) */
	DWORD	sclust;			/* Object data start cluster (0:no cluster or root directory) */
	FSIZE_t	objsize;		/* Object size (valid when sclust != 0) */
} FFOBJID;



/* File object structure (FIL) */

typedef struct {
	FFOBJID	obj;			/* Object identifier (must be the 1st member to detect invalid object pointer) */
	BYTE	flag;			/* File status flags */
	BYTE	err;			/* Abort flag (error code) */
	FSIZE_t	fptr;			/* File read/write pointer (Zeroed on file open) */
	DWORD	clust;			/* Current cluster of fpter (invalid when fptr is 0) */
	LBA_t	sect;			/* Sector number appearing in buf[] (0:invalid) */
} FIL;



/* Directory object structure (DIR) */

typedef struct {
	FFOBJID	obj;			/* Object identifier */
	DWORD	dptr;			/* Current read/write offset */
	DWORD	clust;			/* Current cluster */
	LBA_t	sect;			/* Current sector (0:Read operation has terminated) */
	BYTE*	dir;			/* Pointer to the directory item in the win[] */
	BYTE	fn[12];			/* SFN (in/out) {body[8],ext[3],status[1]} */
} DIR;



/* File information structure (FILINFO) */

typedef struct {
	FSIZE_t	fsize;			/* File size */
	WORD	fdate;			/* Modified date */
	WORD	ftime;			/* Modified time */
	BYTE	fattrib;		/* File attribute */
	TCHAR	fname[12 + 1];	/* File name */
} FILINFO;



/* Format parameter structure (MKFS_PARM) */

typedef struct {
	BYTE fmt;			/* Format option (FM_FAT, FM_FAT32, FM_EXFAT and FM_SFD) */
	BYTE n_fat;			/* Number of FATs */
	UINT align;			/* Data area alignment (sector) */
	UINT n_root;		/* Number of root directory entries */
	DWORD au_size;		/* Cluster size (byte) */
} MKFS_PARM;
#ifdef __cplusplus
}
#endif

#endif