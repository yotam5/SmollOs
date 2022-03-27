[BITS 32]

section .asm
global print: function
global getkey: function
global smollos_malloc: function
global smollos_free: function

;void print(const char* filename)
print:
    push ebp
    mov ebp,esp
    push dword[ebp + 8]
    mov eax,1
    int 0x80
    add esp,4
    pop ebp
    ret

; int getkey()
getkey:
    push ebp
    mov ebp,esp
    mov eax,2
    int 0x80
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
