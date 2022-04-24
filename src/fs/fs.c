#include "./fs.h"
#include "../config.h"
#include "../memory/memory.h"
#include "../status.h"
#include "../memory/heap/kheap.h"
#include "../kernel.h"
#include "../disk/disk.h"
#include "../string/string.h"
#include "../kernel.h"
#include "./fat/fatfs/ff.h"
#include "../kernel.h"
//struct filesystem* filesystems[SmollOs_MAX_FILESYSTEMS];
//struct file_descriptor* file_descriptors[SmollOs_MAX_FILE_DESCRIPTORS];
static FATFS fs;

void fs_init()
{
    f_mount(&fs, "", 0);  
}

static FIL* file_new_descriptor()
{
    return (FIL*)kmalloc(sizeof(FIL));
}

static DIR* dir_new_descriptor()
{
    return (DIR*)kmalloc(sizeof(DIR));
}

DIR* opendir(const char* path)
{
    DIR* dir = dir_new_descriptor();
    f_opendir(dir, path);
    return dir;
}

FIL* fopen(const char* filename, const int perm)
{
    FIL* free_desc = file_new_descriptor();
    f_open(free_desc,filename,perm);
    return free_desc;
}

int closedir(DIR* dir)
{
    f_closedir(dir);
    return 0;
}

int fstat(const char* path,FILINFO* info)
{
    FILINFO f;
    f_stat(path,&f);
    return 0;
}

int freaddir(DIR* dir, FILINFO* info)
{
    f_readdir(dir, info);
    return 0;
}

int fclose(FIL* fd)
{

    f_close(fd);
    //print("file closed\n");
    return 0;
}

int fseek(FIL* fd, int offset, int whence)
{
    return -1;
}

int fwrite(const void* ptr, uint32_t size, uint32_t* nmemb, FIL* fd)
{
    f_write(fd,ptr,size,(unsigned int*)nmemb);
    return 0;
}

int fread(void* ptr, uint32_t size, uint32_t* nmemb, FIL* fd)
{
    f_read(fd,ptr,size,NULL);
    return 0;
}

int fmkdir(const char* ptr)
{
    f_mkdir(ptr);
    return 0;
}