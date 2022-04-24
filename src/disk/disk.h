#pragma once
#include "../fs/fs.h"

//int disk_read_sector(int lba, int total, void *buf);
#ifdef __cplusplus
extern "C" {
#endif
int disk_write_sector(int lba, int total,const void *buf);
int disk_read_sector(int lba, int total, void *buf);
#ifdef __cplusplus
}
#endif