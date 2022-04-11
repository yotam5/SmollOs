/*-----------------------------------------------------------------------*/
/* Low level disk I/O module SKELETON for FatFs     (C)ChaN, 2019        */
/*-----------------------------------------------------------------------*/
/* If a working storage control module is available, it should be        */
/* attached to the FatFs via a glue function rather than modifying it.   */
/* This is an example of glue functions to attach various exsisting      */
/* storage control modules to the FatFs module with a defined API.       */
/*-----------------------------------------------------------------------*/

#include "./ff.h" /* Obtains integer types */
#include "./diskio.h" /* Declarations of disk functions */
#include "../../../disk/disk.h"
#include "../../../kernel.h"
/* Definitions of physical drive number for each drive */
#define DEV_RAM 0 /* Example: Map Ramdisk to physical drive 0 */
#define DEV_MMC 1 /* Example: Map MMC/SD card to physical drive 1 */
#define DEV_USB 2 /* Example: Map USB MSD to physical drive 2 */

/*-----------------------------------------------------------------------*/
/* Get Drive Status                                                      */
/*-----------------------------------------------------------------------*/

DSTATUS disk_status(BYTE pdrv /* Physical drive nmuber to identify the drive */
) {
  switch (pdrv) {
  case DEV_RAM:
    return RES_OK;
    break;
  case DEV_USB:
    return STA_NOINIT;
  default:
    return STA_NOINIT;
  }
  return STA_NOINIT;
}

/*-----------------------------------------------------------------------*/
/* Inidialize a Drive                                                    */
/*-----------------------------------------------------------------------*/

DSTATUS
disk_initialize(BYTE pdrv /* Physical drive nmuber to identify the drive */
) {

  switch (pdrv) {
  case DEV_RAM:
    return RES_OK;
    break;
  case DEV_USB:
    return STA_NOINIT;
    break;
  default:
    return STA_NOINIT;
    break;
  }
  return STA_NOINIT;
}

uint32_t get_fattime(void) { return 0; }

/*-----------------------------------------------------------------------*/
/* Read Sector(s)                                                        */
/*-----------------------------------------------------------------------*/

DRESULT disk_read(BYTE pdrv,  /* Physical drive nmuber to identify the drive */
                  BYTE *buff, /* Data buffer to store read data */
                  LBA_t sector, /* Start sector in LBA */
                  UINT count    /* Number of sectors to read */
) {
  switch (pdrv) {
  case DEV_RAM:
    return disk_read_sector(sector, count, (void*)buff);
    break;
  case DEV_USB:
    return RES_PARERR;
    break;
  }
  return RES_PARERR;
}

/*-----------------------------------------------------------------------*/
/* Write Sector(s)                                                       */
/*-----------------------------------------------------------------------*/

#if FF_FS_READONLY == 0

DRESULT disk_write(BYTE pdrv, /* Physical drive nmuber to identify the drive */
                   const BYTE *buff, /* Data to be written */
                   LBA_t sector,     /* Start sector in LBA */
                   UINT count        /* Number of sectors to write */
) {
  switch (pdrv) {
  case DEV_RAM:
    return disk_write_sector(sector, 1, (void*)buff);
    break;
  case DEV_USB:
    return RES_PARERR;
  }

  return RES_PARERR;
}

#endif

/*-----------------------------------------------------------------------*/
/* Miscellaneous Functions                                               */
/*-----------------------------------------------------------------------*/

DRESULT disk_ioctl(BYTE pdrv, /* Physical drive nmuber (0..) */
                   BYTE cmd,  /* Control code */
                   void *buff /* Buffer to send/receive control data */
) {
  switch (pdrv) {
  case DEV_RAM:

    // Process of the command for the RAM drive
    switch (cmd) {
    case GET_SECTOR_SIZE:
      *(DWORD *)buff = 512;
      return RES_OK;
      break;
    case GET_BLOCK_SIZE:
      *(DWORD *)buff = 512;
      return RES_OK;
      break;
    case GET_SECTOR_COUNT:
      *(DWORD *)buff = 10;
      return RES_OK;
      break;
    }
    return RES_PARERR;

  case DEV_USB:

    // Process of the command the USB drive

    return RES_PARERR;
  }

  return RES_PARERR;
}
