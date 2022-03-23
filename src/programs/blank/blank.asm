[BITS 32]

section .asm
global _start
_start:
    call getkey
    push message
    mov eax,1
    int 0x80
    add esp,4
    jmp $
getkey:
    mov eax,2
    int 0x80
    cmp eax,0x0
    je getkey
    ret

section .data
message: db 'Hello World!',0