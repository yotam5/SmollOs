#ifndef FILE_H
#define FILE_H
#include "stdint.h"
#include <stdint.h>
#include "../fs/fat/fatfs/ff.h"

FIL* fopen(const char* filename, const int mode);
//int fseek(int fd, int offset, int whence);
int fread(void* ptr, uint32_t size, uint32_t* nmemb, FIL* fd);
int fwrite(const void* ptr, uint32_t size, uint32_t* nmemb, FIL* fd);
int fmkdir(const char* ptr);
int fstat(const char* path,FILINFO* info);
DIR* opendir(const char* path);
int freaddir(DIR* dir, FILINFO* info);
int closedir(DIR* dir);
int fclose(FIL* fd);
void fs_init();
#endif