#include "./file.h"
#include "../config.h"
#include "../memory/memory.h"
#include "../status.h"
#include "../memory/heap/kheap.h"
#include "../kernel.h"
#include "pparser.h"
#include "../disk/disk.h"
#include "../string/string.h"
#include "../kernel.h"
#include "./fat/fatfs/ff.h"
#include "../kernel.h"
//struct filesystem* filesystems[SmollOs_MAX_FILESYSTEMS];
//struct file_descriptor* file_descriptors[SmollOs_MAX_FILE_DESCRIPTORS];
FIL* fss_descriptors[SmollOs_MAX_FILE_DESCRIPTORS];
FATFS fs;

void fs_init()
{
    f_mount(&fs, "", 0);  
}

static void file_free_descriptor(int fd)
{
    
    kfree(fss_descriptors[fd]);
    fss_descriptors[fd] = 0x00;
}

static int file_new_descriptor()
{
    int res = -ENOMEM;
    for (int i = 0; i < SmollOs_MAX_FILE_DESCRIPTORS; i++)
    {
        if (fss_descriptors[i] == 0)
        {
            fss_descriptors[i] = (FIL*)kmalloc(sizeof(FIL));
            return i;
        }
    }

    return res;
}

int fopen(const char* filename, const int perm)
{
    int free_desc = file_new_descriptor();
    f_open(fss_descriptors[free_desc],filename,perm);
    return free_desc;
}

int fstat(const char* path, void* stat)
{
    f_stat(path,(FILINFO*)stat);
    return -1;
}

int fclose(int fd)
{
    f_close(fss_descriptors[fd]);
    file_free_descriptor(fd);
    return 0;
}

int fseek(int fd, int offset, int whence)
{
    return -1;
}

int fwrite(const void* ptr, uint32_t size, uint32_t* nmemb, int fd)
{
    f_write(fss_descriptors[fd],ptr,size,(unsigned int*)nmemb);
    return 0;
}

int fread(void* ptr, uint32_t size, uint32_t* nmemb, int fd)
{
    f_read(fss_descriptors[fd],ptr,size,NULL);
    return 0;
}

int fsmkdir(const void* ptr)
{
    return 0;
}