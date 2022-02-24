#ifndef KERNEL_H
#define KERNEL_H

#define VGA_WIDTH 80
#define VGA_HEIGHT 20
#define SmollOs_MAX_PATH 108

void kernel_start();
void print(const char* str);
void kheap_init();
#endif