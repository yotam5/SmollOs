#ifndef PROCESS_H
#define PROCESS_H
#include <stdint.h>
#include "../config.h"
#include "./task.h"

#define PROCESS_FILETYPE_ELF 0
#define PROCESS_FILETYPE_BINARY 1
typedef unsigned char PROCESS_FILE_TYPE;
struct process{
    uint16_t id;
    char filename[SmollOs_MAX_PATH];
    struct task* task;
    void* allocations[SmollOs_MAX_PROGRAM_ALLOCATIONS]; //malloc of the process
    PROCESS_FILE_TYPE filetype;
    union
    {
        void* ptr;
        struct elf_file* elf_file;
    };
    void* stack ; //pointer to stack memory
    uint32_t size; //size of the data pointed to by ptr
    struct keyboard_buffer{
        char buffer[SmollOs_KEYBOARD_BUFFER_SIZE];
        int tail;
        int head;
    }keyboard;

};
int process_switch(struct process* process);
int process_load_switch(const char* filename, struct process** process);
int process_load(const char* filename, struct process** process);
int process_load_for_slot(const char* filename, struct process ** process,int process_slot);
struct process* process_current();
void* process_malloc(struct process* process,size_t size);
#endif