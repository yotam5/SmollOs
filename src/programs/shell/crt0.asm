[BITS 32]

global _start
extern c_start
extern smollos_exit
extern _fini
extern _init
section .asm

_start:

    call _init
    call c_start
    call _fini
    call smollos_exit
    ret