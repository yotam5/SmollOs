#ifndef TASK_H
#define TASK_H

#include "../config.h"
#include "../memory/paging/paging.h"

struct registers
{
    uint32_t edi;
    uint32_t esi;
    uint32_t ebp;
    uint32_t ebx;
    uint32_t edx;
    uint32_t ecx;
    uint32_t eax;

    uint32_t ip;
    uint32_t cs;
    uint32_t flags;
    uint32_t esp;
    uint32_t ss;
};

struct task{
    struct paging_4gb_chunk* page_directory;//page directory of the task
    
    struct registers registers; //when task is not running

    struct task* next;//next task in the linked list
    struct task* prev; //pevious task in linked list
};
int task_init(struct task* task);
#endif