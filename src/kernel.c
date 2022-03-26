#include "kernel.h"
#include "./idt/idt.h"
#include "./memory/memory.h"
#include "./io/io.h"
#include "./memory/heap/kheap.h"
#include "./memory/paging/paging.h"
#include "disk/disk.h"
#include "./fs/pparser.h"
#include <stdint.h>
#include "./disk/streamer.h"
#include "./string/string.h"
#include "./gdt/gdt.h"
#include "./config.h"
#include "./task/tss.h"
#include "status.h"
#include "stddef.h"
#include "./task/task.h"
#include "./task/process.h"
#include "./isr80h/isr80h.h"
#include "./keyboard/keyboard.h"

uint16_t *video_mem = 0;
uint16_t terminal_row = 0;
uint16_t terminal_col = 0;

  // read a value from the data port
  

// takes char and color and return uint16 of that
uint16_t terminal_make_char(char c, char colour) { return (colour << 8) | c; }

// put char on screen location with specific color
void terminal_putchar(int x, int y, char c, char colour) {
  video_mem[(y * VGA_WIDTH) + x] = terminal_make_char(c, colour);
}

void terminal_backspace(){
  if(terminal_row == 0 && terminal_col == 0){
    return;
  }
  if(terminal_col == 0){
    --terminal_row;
    terminal_col = VGA_WIDTH;
  }
  --terminal_col;
  terminal_writechar(' ',15);
  --terminal_col;
}

// put char on screen and automate location indexing
void terminal_writechar(char c, char colour) {
  if (c == '\n') {
    ++terminal_row;
    terminal_col = 0;
    return;
  }
  if(c == 0x08){
    terminal_backspace();
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

static struct paging_4gb_chunk *kernel_chunk = 0;

void panic(const char* msg)
{
  print(msg);
  while(1){}
}

void kernel_page(){
  kernel_registers();
  paging_switch(kernel_chunk); //kernel can access all memeory, memory is linear
}

struct tss tss;
struct gdt gdt_real[SmollOs_TOTAL_GDT_SEGMENTS];
struct gdt_structured gdt_structured[SmollOs_TOTAL_GDT_SEGMENTS] = 
{
  {.base = 0x00, .limit = 0x00, .type = 0x00},      //null segment
  {.base = 0x00, .limit = 0xffffffff, .type = 0x9a},  //kernel code segment
  {.base = 0x00, .limit = 0xffffffff, .type = 0x92}, //kernel data segment
  {.base = 0x00, .limit = 0xffffffff, .type = 0xf8}, //user code segment
  {.base = 0x00, .limit = 0xffffffff, .type = 0xf2}, //user data segment
  {.base = (uint32_t)&tss, .limit = sizeof(tss), .type = 0xe9} //tss segment
};


void kernel_main() {
  terminal_initialize();
  //print("hello\nworld");
  memset(gdt_real,0x00,sizeof(gdt_real));
  gdt_structured_to_gdt(gdt_real, gdt_structured, SmollOs_TOTAL_GDT_SEGMENTS);
  gdt_load(gdt_real,sizeof(gdt_real));
  kheap_init();
  fs_init();
  disk_search_and_init();
  idt_init();

  //tss setup
  memset(&tss,0x00,sizeof(tss));
  tss.esp0 = 0x600000;
  tss.ss0 = KERNEL_DATA_SELECTOR;
  tss_load(0x28);

  // void* ptr1 = kmalloc(50);
  // void* ptr2 = kmalloc(100);
  // kfree(ptr2);
  // if(ptr1 || ptr2){}
  // set up paging
  kernel_chunk = paging_new_4gb(PAGING_IS_WRITABLE | PAGING_IS_PRESENT |
                                PAGING_ACCESS_FROM_ALL);

  // switch to kernel paging chunk
  paging_switch(kernel_chunk);

  char *ptr = kzalloc(4096);
  paging_set(paging_4gb_chunk_get_directory(kernel_chunk), (void *)0x1000,
             (uint32_t)ptr | PAGING_ACCESS_FROM_ALL | PAGING_IS_PRESENT |
                 PAGING_IS_WRITABLE);
				 
  enable_paging();
  isr80h_register_commands();
  keyboard_init();
  //idt_register_interrupt_callback(0x20, pic_timer_callback);
  disk_get(0);

  //enable_interrupts();
  /*struct path_root* root_path = pathparser_parse("0:/bin/shell.exe",NULL);
  if(root_path)
  {

  }*/
  /*struct disk_stream* stream = diskstreamer_new(0);
  diskstreamer_seek(stream,0x201);
  unsigned char c = 0;
  diskstreamer_read(stream, &c, 1);*/

  // outb(0x60, 0xff);
   /*   struct file_stat s;
    print("booted\n");
  int fd = fopen("0:/hello.txt","r");
  if(fd)
  {
    fstat(fd,&s);
    fclose(fd);
    print("worked\n");
  }*/
  struct process* process = 0;
  int res = process_load_switch("0:/blank.elf",&process);
  if(res != SmollOs_ALL_OK){
    panic("failed to load blank.bin");
  }
  //print("run first ever task\n");
  task_run_first_ever_task();
  //print("end of kernel.c\n");
  while(1){}
}
