#include "kernel.h"
#include "./idt/idt.h"
#include "./memory/memory.h"
#include "./io/io.h"
#include "./memory/heap/kheap.h"
#include "./memory/paging/paging.h"
#include "./task/process.h"
#include "disk/disk.h"
#include "./fs/pparser.h"
#include <stdint.h>
#include "./string/string.h"
#include "./gdt/gdt.h"
#include "./config.h"
#include "./task/tss.h"
#include "fs/fat/fatfs/ff.h"
#include "fs/file.h"
#include "programs/stdlib/smollos.h"
#include "status.h"
#include "stddef.h"
#include "./task/task.h"
#include "./isr80h/isr80h.h"
#include "./keyboard/keyboard.h"
//#include "./programs/stdlib/smollos.h"

uint16_t* video_mem = 0;
uint16_t terminal_row = 0;
uint16_t terminal_col = 0;

uint16_t terminal_make_char(char c, char colour)
{
    return (colour << 8) | c;
}

void terminal_putchar(int x, int y, char c, char colour)
{
    video_mem[(y * VGA_WIDTH) + x] = terminal_make_char(c, colour);
}

void terminal_backspace()
{
    if (terminal_row == 0 && terminal_col == 0)
    {
        return;
    }

    if (terminal_col == 0)
    {
        terminal_row -= 1;
        terminal_col = VGA_WIDTH;
    }

    terminal_col -=1;
    terminal_writechar(' ', 15);
    terminal_col -=1;
}

void terminal_writechar(char c, char colour)
{
    if (c == '\n')
    {
        terminal_row += 1;
        terminal_col = 0;
        return;
    }

    if (c == 0x08)
    {
        terminal_backspace();
        return;
    }

    terminal_putchar(terminal_col, terminal_row, c, colour);
    terminal_col += 1;
    if (terminal_col >= VGA_WIDTH)
    {
        terminal_col = 0;
        terminal_row += 1;
    }
}
void terminal_initialize()
{
    video_mem = (uint16_t*)(0xB8000);
    terminal_row = 0;
    terminal_col = 0;
    for (int y = 0; y < VGA_HEIGHT; y++)
    {
        for (int x = 0; x < VGA_WIDTH; x++)
        {
            terminal_putchar(x, y, ' ', 0);
        }
    }   
}

void print(const char* str)
{
    size_t len = strlen(str);
    for (int i = 0; i < len; i++)
    {
        terminal_writechar(str[i], 15);
    }
}


static struct paging_4gb_chunk* kernel_chunk = 0;

void panic(const char* msg)
{
    print(msg);
    while(1) {}
}

void kernel_page()
{
    kernel_registers();
    paging_switch(kernel_chunk);
}

struct tss tss;
struct gdt gdt_real[SmollOs_TOTAL_GDT_SEGMENTS];
struct gdt_structured gdt_structured[SmollOs_TOTAL_GDT_SEGMENTS] = {
    {.base = 0x00, .limit = 0x00, .type = 0x00},                // NULL Segment
    {.base = 0x00, .limit = 0xffffffff, .type = 0x9a},           // Kernel code segment
    {.base = 0x00, .limit = 0xffffffff, .type = 0x92},            // Kernel data segment
    {.base = 0x00, .limit = 0xffffffff, .type = 0xf8},              // User code segment
    {.base = 0x00, .limit = 0xffffffff, .type = 0xf2},             // User data segment
    {.base = (uint32_t)&tss, .limit=sizeof(tss), .type = 0xE9}      // TSS Segment
};

FRESULT scan_files (
    char* path        /* Start node to be scanned (***also used as work area***) */
)
{
    FRESULT res;
    DIR dir;
    UINT i;
    static FILINFO fno;


    res = f_opendir(&dir, path);                       /* Open the directory */
    if (res == FR_OK) {
        for (int k = 0; k< 4;k++) {
            res = f_readdir(&dir, &fno);                   /* Read a directory item */
            if (res != FR_OK || fno.fname[0] == 0) break;  /* Break on error or end of dir */
            if (fno.fattrib & AM_DIR) {                    /* It is a directory */
                i = strlen(path);
                //print(fno.fname);
                //print("\n");
                res = scan_files(path);                    /* Enter the directory */
                if (res != FR_OK) break;
                path[i] = 0;
            } else {                                       /* It is a file. */
                print(fno.fname);
                print("\n");
            }
        }
        f_closedir(&dir);
    }

    return res;
}

FATFS fatfs;
void kernel_main()
{
    terminal_initialize();
    //terminal_initialize();
    memset(gdt_real, 0x00, sizeof(gdt_real));
    gdt_structured_to_gdt(gdt_real, gdt_structured, SmollOs_TOTAL_GDT_SEGMENTS);

    // Load the gdt
    gdt_load(gdt_real, sizeof(gdt_real));

    // Initialize the heap
    kheap_init();

    // Initialize filesystems
    fs_init();

    // Search and initialize the disks
    //print("lol\n");
    //initalize fatfs
    
    /*FIL fil;
    f_open(&fil,"/hello.txt",FA_READ);
    char buff[100];
    f_read(&fil,&buff,10,NULL);
    f_close(&fil);*/
    /*FIL fil;
    f_open(&fil,"/new.txt",FA_CREATE_NEW);
    f_write(&fil, "hello new file", 12, NULL);
    print("loli\n");
    f_close(&fil);
    FIL f2;
    f_open(&f2,"/new.txt",FA_WRITE);
    print("loli2\n");
    f_write(&f2, "my new text", 10,NULL);
    f_close(&f2);
    FIL f3;
    f_open(&f3,"/new.txt",FA_READ);
    char n[100];
    f_read(&f3,&n,10,NULL);
    print(n);
    f_close(&f3);
    print("loli3\n");
    char buff[100];
    print("loli4\n");
    print("file was read\n");
    f_read(&fil,&buff,12,NULL);
    print(buff);
    print("loli5\n");
    print("---------------------------");
    f_mkdir("/home");
    scan_files("/");*/
  /*  struct file_stat s;
  int fd = fopen("0:/hello.txt","r");
  if(fd)
  {
    fread(&data,10,1,fd);
    print(data);
    fstat(fd,&s);
    fclose(fd);
    print("worked\n");
  }*/
    // Initialize the interrupt descriptor table
    
    idt_init();

    // Setup the TSS
    memset(&tss, 0x00, sizeof(tss));
    tss.esp0 = 0x600000;
    tss.ss0 = KERNEL_DATA_SELECTOR;

    // Load the TSS
    tss_load(0x28);

    // Setup paging
    kernel_chunk = paging_new_4gb(PAGING_IS_WRITEABLE | PAGING_IS_PRESENT | PAGING_ACCESS_FROM_ALL);
    
    // Switch to kernel paging chunk
    paging_switch(kernel_chunk);

    // Enable paging
    enable_paging();

    // Register the kernel commands
    isr80h_register_commands();
    // Initialize all the system keyboards
    keyboard_init();    
    //char buff[1000];
    //smollos_terminal_readline(buff,sizeof(buff),true);    
    //smollos_getkeyblock();
    struct process* process = 0;
    int res = process_load_switch("/blank.elf", &process);
    if (res != SmollOs_ALL_OK)
    {
        panic("Failed to load blank.elf\n");
    }


    struct command_argument argument;
    strcpy(argument.argument, "/hello.txt");
    argument.next = 0x00; 

    process_inject_arguments(process, &argument);
    
    struct command_argument argument2;
    struct process* process2 = 0;
    int res2;
    res2 = process_load_switch("/shell.elf", &process2);
    if (res2 != SmollOs_ALL_OK)
    {
        panic("Failed to load blank.elf\n");
    }

    strcpy(argument2.argument, "/hello.txt");
    argument2.next = 0x00; 
    process_inject_arguments(process2, &argument2);
    
    task_run_first_ever_task();

    while(1) {}
}