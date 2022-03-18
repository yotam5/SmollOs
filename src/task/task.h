#ifndef TASK_H
#define TASK_H

#include "../config.h"
#include "../memory/paging/paging.h"

struct interrupt_frame;
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
}__attribute__((packed));

struct process;

struct task{
    struct paging_4gb_chunk* page_directory;//page directory of the task
    struct registers registers; //when task is not running
    struct process* process; //the process of the task
    struct task* next;//next task in the linked list
    struct task* prev; //pevious task in linked list
};
int task_init(struct task* task,struct process* process);
struct task* task_new(struct process* process);
int task_free(struct task* task);
struct task* task_get_next();
void task_return(struct registers* regs);
void restore_general_purpose_registers(struct task* task);
void user_registers();
int task_switch(struct task* task);
int task_page();
void task_run_first_ever_task();
void task_current_save_state(struct interrupt_frame *frame);
int copy_string_from_task(struct task* task,void* virtuall, void*phys, int max);
uint32_t paging_get(uint32_t* directory,void* virt);
#endif