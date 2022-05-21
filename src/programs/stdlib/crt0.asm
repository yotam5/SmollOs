[BITS 32]

section .asm
global _start
extern c_start
extern smollos_exit
extern _fini
extern _init


_start:
    push esi
    push edi
    call _init
    pop edi
    pop esi
    call c_start ;main
    call smollos_exit
    ret