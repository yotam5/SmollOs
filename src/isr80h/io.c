#include "./io.h"
#include "../task/task.h"
#include "../kernel.h"
#include "../keyboard/keyboard.h"
#include "../fs/fs.h"
#include "../memory/memory.h"
#include "../memory/heap/kheap.h"
#include <stdint.h>

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
    FIL* fd = fopen(buff, mode);
    return fd;
}

//void* ptr, uint32_t size, uint32_t nmemb, int fd
void* isr80h_command12_smollos_fread(struct interrupt_frame* frame)
{
    char* user_space_buffer = (char*)(int)task_get_stack_item(task_current(), 0);
    uint32_t size = (uint32_t)(int)task_get_stack_item(task_current(), 1);
    uint32_t* nmemb = (uint32_t*)(int)task_get_stack_item(task_current(), 2);
    FIL* fd = (FIL*)(int)task_get_stack_item(task_current(), 3);
    char* tmp = (char*)kmalloc(size);
    int res = fread(tmp,size,nmemb,fd);
    copy_string_to_task(task_current(),user_space_buffer,tmp,size);
    kfree(tmp);
    return (void*)res;
}

void* isr80h_command13_smollos_fclose(struct interrupt_frame* frame)
{
    FIL* fd = (FIL*)(int)task_get_stack_item(task_current(), 0);
    int res = fclose(fd);
    return (void*)res;
}

void* isr80h_command15_smollos_fwrite(struct interrupt_frame* frame)
{
    FIL* fd =(FIL*)(int)task_get_stack_item(task_current(), 0);
    const char* user_space_buffer = (const char*)(int)task_get_stack_item(task_current(), 1);
    uint32_t amount = (uint32_t)task_get_stack_item(task_current(),2);
    uint32_t* nmemb = (uint32_t*)task_get_stack_item(task_current(), 3);
    char* tmp = (char*)kmalloc(amount);
    copy_string_from_task(task_current(), (void*)user_space_buffer, tmp, amount);
    if(nmemb){}
    fwrite(tmp,amount,NULL,fd);
    kfree(tmp);
    return 0;
}

void* isr80h_command14_smollos_mkdir(struct interrupt_frame* frame)
{

    char tmp[1024];
    char* user_space_buffer = task_get_stack_item(task_current(), 0);
    copy_string_from_task(task_current(), user_space_buffer, tmp, sizeof(tmp));
    fmkdir(tmp);
    return 0;
}

void* isr80h_command16_smollos_fstat(struct interrupt_frame* frame)
{
    const char* user_space_path = (const char*)(int)task_get_stack_item(task_current(), 0);
    char tmp[1024];
    copy_string_from_task(task_current(), user_space_path, tmp, sizeof(tmp));
    FILINFO* virt_fno = (FILINFO*)(int)task_get_stack_item(task_current(), 1);
    FILINFO fno;
    f_stat(tmp,&fno);
    memcpy_to_task(task_current(),virt_fno,&fno,sizeof(fno));
    return 0;
}

void* isr80h_command17_smollos_opendir(struct interrupt_frame* frame)
{
    const char* user_space_path = (const char*)(int)task_get_stack_item(task_current(), 0);
    char tmp[1024];
    copy_string_from_task(task_current(), user_space_path, tmp, sizeof(tmp));
    return opendir(tmp);
}

void* isr80h_command18_smollos_closedir(struct interrupt_frame* frame)
{
    DIR* dir = (DIR*)(int)task_get_stack_item(task_current(), 0);
    closedir(dir);
    return 0;
}

void* isr80h_command19_smollos_freaddir(struct interrupt_frame* frame)
{
    DIR* dir = (DIR*)(int)task_get_stack_item(task_current(), 0);
    FILINFO* fno_user_space = (FILINFO*)(int)task_get_stack_item(task_current(), 1);
    FILINFO tmp;
    memcpy_from_task(task_current(),fno_user_space,&tmp,sizeof(FILINFO));
    freaddir(dir,&tmp);
    memcpy_to_task(task_current(),fno_user_space,&tmp,sizeof(FILINFO));
    return 0;
}