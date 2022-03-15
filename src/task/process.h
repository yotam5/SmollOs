#ifndef PROCESS_H
#define PROCESS_H
#include <stdint.h>
#include "../config.h"
#include "./task.h"

struct process{
    uint16_t id;
    char filename[SmollOs_MAX_PATH];
    struct task* task;
    void* allocations[SmollOs_MAX_PROGRAM_ALLOCATIONS]; //malloc of the process
    void* ptr; //pointer to process in memeory
    void* stack ; //pointer to stack memory
    uint32_t size; //size of the data pointed to by ptr

};

#endif