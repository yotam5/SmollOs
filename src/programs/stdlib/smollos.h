#ifndef SmollOs_H
#define SmollOs_H
#include <stddef.h>
#include <stdbool.h>
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif

#ifndef FF_DEFINED
#include "../../fs/interfs.h"
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
int user_putchar(uint16_t x,uint16_t y,uint16_t c);
void* smollos_putchar(char c);
int smollos_system(struct command_argument* arguments);
int smollos_system_run(const char* command);
int smollos_getkeyblock();
void smollos_process_get_arguments(struct process_arguments* arguments);
void smollos_terminal_readline(char* out,int max, bool output_while_typing);
struct command_argument* smollos_parse_command(const char* command, int max);
void smollos_exit();
FIL* smollos_fopen(const char*,const int);
int smollos_fread(void* ptr, uint32_t size, uint32_t nmemb, FIL* fd);
int smollos_fclose(FIL* fd);
void smollos_fwrite(FIL* fd,const char* buff,uint32_t amount,uint32_t* nmemb);
void  smollos_mkdir(const char* path);
int smollos_fstat(const char* path,FILINFO* info);
int smollos_fclosedir(DIR* dir);
DIR* smollos_opendir(const char* path);
int smollos_closedir(DIR* dir);
int smollos_freaddir(DIR* dir,FILINFO*  fno);
int smollos_funlink (const char* path);
int smollos_frename (const TCHAR* path_old, const TCHAR* path_new);
int smollos_spawnp(const char* filename);
#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};

#endif
#endif