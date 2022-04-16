#ifndef FILE_H
#define FILE_H
#include "stdint.h"
#include "./pparser.h"
#include <stdint.h>

int fopen(const char* filename, const int);
int fseek(int fd, int offset, int whence);
int fread(void* ptr, uint32_t size, uint32_t nmemb, int fd);
int fwrite(const void* ptr, uint32_t size, uint32_t nmemb, int fd);
int fstat(const char* path, void* stat);
int fclose(int fd);
void fs_init();
#endif