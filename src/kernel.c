#include "kernel.h"
#include "./idt/idt.h"
#include "./io/io.h"
#include "./memory/heap/kheap.h"
#include "./memory/paging/paging.h"
#include "disk/disk.h"
#include "./fs/pparser.h"
#include "./string/string.h"
#include <stddef.h>
#include <stdint.h>

uint16_t *video_mem = 0;
uint16_t terminal_row = 0;
uint16_t terminal_col = 0;

// takes char and color and return uint16 of that
uint16_t terminal_make_char(char c, char colour) { return (colour << 8) | c; }

// put char on screen location with specific color
void terminal_putchar(int x, int y, char c, char colour) {
  video_mem[(y * VGA_WIDTH) + x] = terminal_make_char(c, colour);
}

// put char on screen and automate location indexing
void terminal_writechar(char c, char colour) {
  if (c == '\n') {
    ++terminal_row;
    terminal_col = 0;
    return;
  }
  terminal_putchar(terminal_col, terminal_row, c, colour);
  ++terminal_col;
  if (terminal_col >= VGA_WIDTH) {
    terminal_col = 0;
    ++terminal_row;
  }
}

// clear the terminal
void terminal_initialize() {

  video_mem = (uint16_t *)(0xB8000);
  for (int y = 0; y < VGA_HEIGHT; ++y) {
    for (int x = 0; x < VGA_WIDTH; ++x) {
      terminal_putchar(x, y, ' ', 0);
    }
  }
}



// print string to the screen
void print(const char *str) {
  size_t len = strlen(str);
  for (int i = 0; i < len; ++i) {
    terminal_writechar(str[i], 15);
  }
}

static struct paging_4g_chunk *kernel_chunk = 0;
void kernel_main() {
  terminal_initialize();
  print("hello\nworld");
  kheap_init();
  idt_init();

  // void* ptr1 = kmalloc(50);
  // void* ptr2 = kmalloc(100);
  // kfree(ptr2);
  // if(ptr1 || ptr2){}
  // set up paging
  kernel_chunk = paging_new_4gb(PAGING_IS_WRITABLE | PAGING_IS_PRESENT |
                                PAGING_ACCESS_FROM_ALL);

  // switch to kernel paging chunk
  paging_switch(paging_4gb_chunk_get_directory(kernel_chunk));

  char *ptr = kzalloc(4096);
  paging_set(paging_4gb_chunk_get_directory(kernel_chunk), (void *)0x1000,
             (uint32_t)ptr | PAGING_ACCESS_FROM_ALL | PAGING_IS_PRESENT |
                 PAGING_IS_WRITABLE);
				 
  enable_paging();

  disk_get(0);

  enable_interrupts();
  struct path_root* root_path = pathparser_parse("0:/bin/shell.exe",NULL);
  if(root_path)
  {

  }
  // outb(0x60, 0xff);
}
