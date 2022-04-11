#ifndef SmollOs_H
#define SmollOs_H
#include <stddef.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifndef PROCESS_H
struct command_argument
{
    char argument[512];
    struct command_argument* next;
};
struct process_arguments
{
    int argc;
    char** argv;
};
#endif

void print(const char* filename);

int smollos_getkey();

void smollos_process_load_start(const char* filename);

void* smollos_malloc(size_t size);

void* smollos_free(void* ptr);

void* smollos_putchar(char c);

int smollos_system(struct command_argument* arguments);
int smollos_system_run(const char* command);
int smollos_getkeyblock();
void smollos_process_get_arguments(struct process_arguments* arguments);
void smollos_terminal_readline(char* out,int max, bool output_while_typing);
struct command_argument* smollos_parse_command(const char* command, int max);
void smollos_exit();
#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};

#endif
#endif