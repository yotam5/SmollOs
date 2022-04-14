#ifndef MEMORY_H
#define MEMORY_H
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
void* memset(void* ptr,int c, size_t size);
int memcmp(void *s1, void *s2, int count);
void* memcpy(void* dest,void* src,int len);
#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};
#endif
#endif