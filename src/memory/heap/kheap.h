#ifndef KHEAP_H
#define KHEAP_H

#include <stdint.h>
#include <stddef.h>
#ifdef __cplusplus
extern "C" {
#endif

void *kmalloc(size_t size);
void kfree(void* ptr);
void kheap_init();
void *kzalloc(size_t size);
#ifdef __cplusplus
}
#endif

#endif