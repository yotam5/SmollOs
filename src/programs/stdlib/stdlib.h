#ifndef STDLIB_H
#define STDLIB_H
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif
void* malloc(size_t size);
void free(void* ptr);
char* itoa(int i);
#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};
#endif
#endif