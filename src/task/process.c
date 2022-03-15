#include "./process.h"
#include "./task.h"
#include "../memory/memory.h"
#include "../status.h"
#include "../memory/heap/kheap.h"
#include "../fs/file.h"
#include "../string/string.h"
#include "../kernel.h"
#include "../memory/paging/paging.h"

struct process *current_process = 0; // current running process
static struct process* processes[SmollOs_MAX_PROCESSES] = {};
static void process_init(struct process *process) {
  memset(process, 0, sizeof(struct process));
}

struct process *process_current() {
  return current_process;
}

struct process* process_get(int process_id){
    if(process_id < 0 || process_id >= SmollOs_MAX_PROCESSES){
        return NULL;
    }
    return processes[process_id];
}

static int process_load_binary(const char* filename, struct process* process){
    int res = 0;
    int fd = fopen(filename,"r");
    if(!fd){
        res= -EIO;
        goto out;
    }
    struct file_stat stat;
    res = fstat(fd,&stat);
    if(res!=SmollOs_ALL_OK){
        goto out;
    }
    void *program_data_ptr = kzalloc(stat.filesize);
    if(!program_data_ptr){
        res = -ENOMEM;
        goto out;
    }
    if(fread(program_data_ptr,stat.filesize,1,fd)!=1){
        res = -EIO;
        goto out;
    }
    process->ptr = program_data_ptr;
    process->size = stat.filesize;
    out:
    fclose(fd);
    return res;
}

int process_get_free_slot(){
    for(int i = 0; i < SmollOs_MAX_PROCESSES;i++){
        if(processes[i] == 0){
            return i;
        }
    }
    return -EISTKN;
}

static int process_load_data(const char* filename, struct process* process){
    int res = 0;
    res = process_load_binary(filename,process);
    return res;
}

int process_map_binary(struct process* process){
    int res = 0;
    paging_map_to(process->task->page_directory->directory_entry,
        (void*)SmollOs_PROGRAM_VIRTUAL_ADDRESS,process->ptr,
        paging_align_address(process->ptr + process->size),PAGING_IS_PRESENT | PAGING_IS_WRITABLE);
    return res;
}

int process_map_memory(struct process* process){
    int res = 0;
    res = process_map_binary(process);
    return res;
}

int process_load_for_slot(const char* filename, struct process ** process,int process_slot) 
{
    int res = 0;
    struct task* task = 0;
    struct process* _process;
    void* program_stack_ptr = 0;
    if(process_get(process_slot)!=0){
        res = -EISTKN;
        goto out;
    }
    _process = kzalloc(sizeof(struct process));
    if(!_process){
        res = -ENOMEM;
        goto out;
    }
    process_init(_process);
    res = process_load_data(filename,_process);
    if(res < 0){
        goto out;
    }
    program_stack_ptr = kzalloc(SmollOs_USER_PROGRAM_STACK_SIZE);
    if(!program_stack_ptr){
        res = -ENOMEM;
        goto out;
    }
    strncpy(_process->filename,filename,sizeof(_process->filename));
    _process->stack = program_stack_ptr;
    _process->id = process_slot;

    task = task_new(_process);
    int e = ERROR_I(task);
    if(e == 0){
        res = ERROR_I(task);
    }
    _process->task = task;
    res = process_map_memory(_process);
    *process = _process;
    process[process_slot] = _process;
    out:
    if(ISERR(res)){
        if(_process && _process->task){
            task_free(_process->task);
        }
        //free process data
    }
    return res;
}

int process_load(const char* filename, struct process** process)
{
    int res = 0;
    int process_slot = process_get_free_slot();
    if(process_slot < 0){
        res = -ENOMEM;
        goto out;
    }
    res = process_load_for_slot(filename,process,process_slot);
    out:
    return res;
}