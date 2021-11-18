#ifndef KERNEL_H
#define KERNEL_H

#define VGA_WIDTH 80
#define VGA_HEIGHT 20

void kernel_start();
void print(const char* str);
void kheap_init();
#endif