[BITS 32]

section .asm
global _start
_start:

__loop:
    call getkey
    push eax
    mov eax,3
    int 0x80
    add esp,4
    jmp __loop
getkey:
    mov eax,2
    int 0x80
    cmp eax,0x0
    je getkey
    ret

section .data
message: db 'Hello World!',0