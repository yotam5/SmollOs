#include "./process.h"
#include "../task/task.h"
#include "../task/process.h"
#include "../config.h"
#include "../status.h"
#include "../string/string.h"


void* isr80h_command6_process_load_start(struct interrupt_frame* frame)
{
    void* filename_user_ptr = task_get_stack_item(task_current(), 0);
    char filename[SmollOs_MAX_PATH];
    char path[SmollOs_MAX_PATH];
    struct process* process;
    int res = copy_string_from_task(task_current(), filename_user_ptr, filename, sizeof(filename));
    if (res < 0)
    {
        goto out;
    }

    strcpy(path, "0:/");
    strcpy(path+3, filename);

    process = 0;
    res = process_load_switch(path, &process);
    if (res < 0)
    {
        goto out;
    }

    task_switch(process->task);
    task_return(&process->task->registers);

out:
    return 0;
}

void* isr80h_command7_invoke_system_command(struct interrupt_frame* frame)
{
    struct command_argument* arguments = (command_argument*)task_virtual_address_to_physical(task_current(), task_get_stack_item(task_current(), 0));
    if (!arguments || strlen(arguments[0].argument) == 0)
    {
        return (void*)(-EINVARG);
    }

    struct command_argument* root_command_argument = &arguments[0];
    const char* program_name = root_command_argument->argument;

    char path[SmollOs_MAX_PATH];
    strcpy(path, "0:/");
    strncpy(path+3, program_name, sizeof(path));
    
    struct process* process = 0;
    int res = process_load_switch(path, &process);
    if (res < 0)
    {
        return (void*)(res);
    }
    
    res = process_inject_arguments(process, root_command_argument);
    if (res < 0)
    {
        return (void*)(res);
    }

    task_switch(process->task);
    task_return(&process->task->registers);

    return 0;
}

void* isr80h_command8_get_program_arguments(struct interrupt_frame* frame)
{
    struct process* process = task_current()->process;
    struct process_arguments* arguments = (process_arguments*)task_virtual_address_to_physical(task_current(), task_get_stack_item(task_current(), 0));

    process_get_arguments(process, &arguments->argc, &arguments->argv);
    return 0;
}

void* isr80h_command9_exit(struct interrupt_frame* frame)
{
    struct process* process = task_current()->process;
    process_terminate(process);
    task_next();
    return 0;
}

void* isr80h_command22_spawnp(struct interrupt_frame* frame)
{
    const char* filename = (const char*)(int)task_get_stack_item(task_current(), 0);
    char buff[1024];
    copy_string_from_task(task_current(), filename, buff, sizeof(buff));
    struct process* p;
    int res = process_load(buff,&p);
    return (void*)res;
}