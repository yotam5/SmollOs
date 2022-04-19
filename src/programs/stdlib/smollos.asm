[BITS 32]

section .asm

global print:function
global smollos_getkey: function
global smollos_malloc: function
global smollos_free: function
global smollos_putchar:function
global smollos_process_load_start: function
global smollos_process_get_arguments: function 
global smollos_system:function
global smollos_exit: function
global user_putchar: function
global smollos_fopen: function
global smollos_fread: function
global smollos_fclose: function
global smollos_mkdir: function
global smollos_fwrite: function
global smollos_fstat: function
global smollos_opendir: function
global smollos_closedir: function
global smollos_freaddir: function

extern _fini

; void print(const char* filename)
print:
    push ebp
    mov ebp, esp
    push dword[ebp+8]
    mov eax, 1 ; Command print
    int 0x80
    add esp, 4
    pop ebp
    ret

; int smollos_getkey()
smollos_getkey:
    push ebp
    mov ebp, esp
    mov eax, 2 ; Command getkey
    int 0x80
    pop ebp
    ret

; void smollos_putchar(char c)
smollos_putchar:
    push ebp
    mov ebp, esp
    mov eax, 3 ; Command putchar
    push dword [ebp+8] ; Variable "c"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void* smollos_malloc(size_t size)
smollos_malloc:
    push ebp
    mov ebp, esp
    mov eax, 4 ; Command malloc (Allocates memory for the process)
    push dword[ebp+8] ; Variable "size"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void smollos_free(void* ptr)
smollos_free:
    push ebp
    mov ebp, esp
    mov eax, 5 ; Command 5 free (Frees the allocated memory for this process)
    push dword[ebp+8] ; Variable "ptr"
    int 0x80
    add esp, 4
    pop ebp
    ret

; void smollos_process_load_start(const char* filename)
smollos_process_load_start:
    push ebp
    mov ebp, esp
    mov eax, 6 ; Command 6 process load start ( stars a process )
    push dword[ebp+8] ; Variable "filename"
    int 0x80
    add esp, 4
    pop ebp
    ret

; int smollos_system(struct command_argument* arguments)
smollos_system:
    push ebp
    mov ebp, esp
    mov eax, 7 ; Command 7 process_system ( runs a system command based on the arguments)
    push dword[ebp+8] ; Variable "arguments"
    int 0x80
    add esp, 4
    pop ebp
    ret


; void smollos_process_get_arguments(struct process_arguments* arguments)
smollos_process_get_arguments:
    push ebp
    mov ebp, esp
    mov eax, 8 ; Command 8 Gets the process arguments
    push dword[ebp+8] ; Variable arguments
    int 0x80
    add esp, 4
    pop ebp
    ret

; void smollos_exit()
smollos_exit:
    push ebp
    mov ebp, esp
    mov eax, 9 ; Command 9 process exit
    int 0x80
    call _fini ;before exit?
    pop ebp
    ret

;int user_putchar(uint16_t x, uint16_t y, uint16_t c);
user_putchar:
    push ebp
    mov ebp,esp
    mov eax,10
    push dword[ebp+16]
    push dword[ebp+12]
    push dword[ebp+8]

    int 0x80
    add esp,12
    pop ebp
    ret

;int smollos_fopen(const char* path,const int mode)
smollos_fopen:
    push ebp
    mov ebp,esp
    mov eax,11
    push dword[ebp+12]
    push dword[ebp + 8]

    int 0x80
    add esp,8
    pop ebp
    ret
    
;smollos_fread(void* ptr, uint32_t size, uint32_t nmemb, int fd)
smollos_fread:
    push ebp
    mov ebp,esp
    mov eax,12
    push dword[ebp+20]
    push dword[ebp+16]
    push dword[ebp+12]
    push dword[ebp+8]

    int 0x80
    add esp,16
    pop ebp
    ret

;void fclose(int fd)
smollos_fclose:
    push ebp
    mov ebp,esp
    mov eax,13
    push dword[ebp+8]
    int 0x80
    add esp,4
    pop ebp
    ret

;void  mkdir(const char* path)
smollos_mkdir:
    push ebp
    mov ebp,esp
    mov eax,14
    push dword[ebp+8]
    int 0x80
    add esp,4
    pop ebp
    ret

;void smollos_fwrite(int fd,const char* buff,uint32_t amount,uint32_t* nmemb);
smollos_fwrite:
    push ebp
    mov ebp,esp
    mov eax,15
    push dword[ebp+20]
    push dword[ebp+16]
    push dword[ebp+12]
    push dword[ebp+8]
    int 0x80
    add esp,16
    pop ebp
    ret

;void smollos_fstat(const char* path,FILINFO* info);
smollos_fstat:
    push ebp
    mov ebp,esp
    mov eax,16
    push dword[ebp + 12]
    push dword[ebp+8]
    int 0x80
    add esp,8
    pop ebp
    ret

;void smollos_opendir(char* path)
smollos_opendir:
    push ebp
    mov ebp,esp
    mov eax,17
    push dword[ebp + 12]
    push dword[ebp+8]
    int 0x80
    add esp,8
    pop ebp
    ret

;void smollos_closedir(DIR* dir)
smollos_closedir:
    push ebp
    mov ebp,esp
    mov eax,18
    push dword[ebp + 8]
    int 0x80
    add esp,4
    pop ebp
    ret

;FRESULT f_readdir (DIR* dp, FILINFO* fno);
smollos_freaddir:
    push ebp
    mov ebp,esp
    mov eax,19
    push dword[ebp+12]
    push dword[ebp+8]
    int 0x80
    add esp,8
    pop ebp
    ret