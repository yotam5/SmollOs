#pragma once
#include "../fs/file.h"

//int disk_read_sector(int lba, int total, void *buf);

int disk_write_sector(int lba, int total,const void *buf);
int disk_read_sector(int lba, int total, void *buf);