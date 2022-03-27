#ifndef SmollOs_H
#define SmollOs_H
#include <stddef.h>
#include <stdbool.h>

#ifdef __cplusplus
extern "C" {
#endif

void print(const char* filename);

int smollos_getkey();

void smollos_process_load_start(const char* filename);

void* smollos_malloc(size_t size);

void* smollos_free(void* ptr);

void* smollos_putchar(char c);

int smollos_getkeyblock();

void smollos_terminal_readline(char* out,int max, bool output_while_typing);

#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};

#endif
#endif