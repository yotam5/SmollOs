[BITS 32]

global _start
extern c_start
extern smollos_exit

section .asm

_start:
    call c_start
    call smollos_exit
    ret