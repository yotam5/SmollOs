#include "./process.h"
#include "../task/task.h"
#include "../task/process.h"
#include "../config.h"
#include "../status.h"
#include "../string/string.h"
#include "../memory/heap/kheap.h"
#include "../kernel.h"

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

struct command_argument* smollos_parse_command(const char* command, int max)
{
    struct command_argument* root_command = 0;
    char scommand[1025];
    char* token;
    struct command_argument* current;
    if (max >= (int) sizeof(scommand))
    {
        return 0;
    }


    strncpy(scommand, command, sizeof(scommand));
    token = strtok(scommand, " ");
    if (!token)
    {
        goto out;
    }

    root_command = (struct command_argument*)kzalloc(sizeof(struct command_argument));
    if (!root_command)
    {
        goto out;
    }

    strncpy(root_command->argument, token, sizeof(root_command->argument));
    root_command->next = 0;


    current = root_command;
    token = strtok(NULL, " ");
    while(token != 0)
    {
        struct command_argument* new_command = (struct command_argument*)kzalloc(sizeof(struct command_argument));
        if (!new_command)
        {
            break;
        }

        strncpy(new_command->argument, token, sizeof(new_command->argument));
        new_command->next = 0x00;
        current->next = new_command;
        current = new_command;
        token = strtok(NULL, " ");
    }
out:
    return root_command;
}

void* isr80h_command22_spawnp(struct interrupt_frame* frame)
{
    //need to implement arguments command_arg with new etc,
    //also not to be autistic and do it right so no weird errors happends
    print("testo\n");
    const char* filename = (const char*)task_get_stack_item(task_current(), 0);
    char buff[1024];
    char progname[20];
    copy_string_from_task(task_current(), filename, buff, sizeof(buff));
    strncpy(progname,filename,sizeof(progname));
    struct process* p;
    int res = process_load(strtok(progname,NULL),&p);
    command_argument* root = smollos_parse_command(buff, sizeof(buff));
    process_inject_arguments(p, root);
    return (void*)res;
}

