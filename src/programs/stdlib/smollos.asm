[BITS 32]

section .asm
global print: function
global smollos_getkey: function
global smollos_malloc: function
global smollos_free: function
global smollos_putchar: function
global smollos_process_load_start: function
global smollos_process_get_arguments: function
global smollos_system: function
global smollos_exit: function
;void print(const char* filename)
print:
    push ebp
    mov ebp,esp
    push dword[ebp + 8]
    mov eax,1
    int 0x80
    cmp eax,0
    add esp,4
    pop ebp
    ret

; int smollos_getkey()
smollos_getkey:
    push ebp
    mov ebp,esp
    mov eax,2
    int 0x80
    cmp eax,0
    pop ebp
    ret

;int smollos_system(struct command_argument* arguments)
smollos_system:
    push ebp
    mov ebp,esp
    mov eax,7;run sys command based on the arguments
    push dword[ebp+8]
    int 0x80
    add esp,4
    pop ebp
    ret

;void* smollos_malloc(size_t size)
smollos_malloc:
    push ebp
    mov ebp,esp
    mov eax,4
    push dword[ebp+8]
    int 0x80
    add esp,4
    pop ebp
    ret

;void* smollos_free(void* ptr);
smollos_free:
    push ebp
    mov ebp,esp
    mov eax,5
    push dword[ebp+8] ;variable ptr
    int 0x80
    add esp,4
    pop ebp
    ret

;void* putchar(char c);
smollos_putchar:
    push ebp
    mov ebp,esp
    mov eax,3
    push dword[ebp+8]
    int 0x80
    add esp,4
    pop ebp
    ret

;void smollos_process_load_start(const char* filename)
smollos_process_load_start:
    push ebp
    mov ebp,esp
    mov eax,6
    push dword[ebp+8]
    int 0x80
    add esp,4
    pop ebp
    ret

;void smollos_process_get_arguments(struct process_arguments* arguments)
smollos_process_get_arguments:
    push ebp
    mov ebp,esp
    mov eax,8
    push dword[ebp+8]; variable arguments
    int 0x80
    add esp,4
    pop ebp
    ret

;void smollos_exit()
smollos_exit:
    push ebp
    mov ebp,esp
    mov eax,9
    int 0x80
    pop ebp
    ret