[BITS 32]

section .asm
global print: function
global smollos_getkey: function
global smollos_malloc: function
global smollos_free: function
global smollos_putchar: function
global smollos_process_load_start: function
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