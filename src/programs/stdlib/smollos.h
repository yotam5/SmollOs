#ifndef SmollOs_H
#define SmollOs_H
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

void print(const char* filename);

int getkey();

void* smollos_malloc(size_t size);

void* smollos_free(void* ptr);

#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};

#endif
#endif