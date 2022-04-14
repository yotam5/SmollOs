[BITS 32]

section .asm
global _start
extern c_start
extern smollos_exit
extern _fini
extern _init


_start:

    call _init

    call c_start
    call smollos_exit
    ret