#pragma once
#include "../fs/file.h"
typedef unsigned int SMOLLOS_DISK_TYPE;

//represents a real physical hard disk
#define SMOLLOS_DISK_TYPE_REAL 0
struct disk
{
    SMOLLOS_DISK_TYPE type;
    int sector_size;
    int id;
    struct filesystem* filesystem;
    void* fs_private;
};

//int disk_read_sector(int lba, int total, void *buf);
void disk_search_and_init();
struct disk* disk_get(int index);
int disk_read_block(struct disk* idisk, unsigned int lba, int total, void *buff);
int disk_write_block(struct disk* idisk, unsigned int lba, int total, void* buf);
int disk_write_sector(int lba, int total, void *buf);
int disk_read_sector(int lba, int total, const void *buf);