#include "./io.h"
#include "../task/task.h"
#include "../kernel.h"
#include "../keyboard/keyboard.h"
#include "../fs/file.h"
#include "../memory/memory.h"
#include "../memory/heap/kheap.h"
void* isr80h_command1_print(struct interrupt_frame* frame)
{
    void* user_space_msg_buffer = task_get_stack_item(task_current(), 0);
    char buf[1024];
    copy_string_from_task(task_current(), user_space_msg_buffer, buf, sizeof(buf));
    print(buf);
    return 0;
}


void* isr80h_command2_getkey(struct interrupt_frame* frame)
{
    char c = keyboard_pop();
    return (void*)((int)c);
}

void* isr80h_command3_putchar(struct interrupt_frame* frame)
{
    char c = (char)(int) task_get_stack_item(task_current(), 0);
    terminal_writechar(c, 15);
    return 0;
}

void* isr80h_command10_putchar(struct interrupt_frame* frame)
{
    //print("was called\n");
    int x = (int)task_get_stack_item(task_current(), 0);
    int y = (int)task_get_stack_item(task_current(), 1);
    int c = (int)task_get_stack_item(task_current(), 2);
    uint16_t* video_mem = (uint16_t*)0xB8000;
    video_mem[(y * 80) + x] = c;
    return 0;
}

void* isr80h_command11_smollos_fopen(struct interrupt_frame* frame)
{
    char buff[1024];
    void* path_ptr = task_get_stack_item(task_current(), 0);
    const int mode = (const int)(int)(task_get_stack_item(task_current(), 1));
    copy_string_from_task(task_current(), path_ptr, buff, sizeof(buff));
    //mode need to be int 1,2,3..
    //print(buff);
    int fd = fopen(buff, mode);
    return (void*)fd;
}

//void* ptr, uint32_t size, uint32_t nmemb, int fd
void* isr80h_command12_smollos_fread(struct interrupt_frame* frame)
{
    print("fread was called\n");
    char* user_space_buffer = (char*)(int)task_get_stack_item(task_current(), 0);
    uint32_t size = (uint32_t)(int)task_get_stack_item(task_current(), 1);
    uint32_t nmemb = (uint32_t)(int)task_get_stack_item(task_current(), 2);
    int fd = (int)task_get_stack_item(task_current(), 3);
    char* tmp = (char*)kmalloc(size);
    int res = fread(tmp,size,nmemb,fd);
    copy_string_to_task(task_current(),user_space_buffer,tmp,size);
    return (void*)res;
}