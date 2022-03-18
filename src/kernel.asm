[BITS 32]
global _start
global kernel_registers
extern kernel_main
CODE_SEG equ 0x08
DATA_SEG equ 0x10

_start:
	mov ax, DATA_SEG
	mov ds,ax
	mov es,ax
	mov fs,ax
	mov gs,ax
	mov ss,ax
	mov ebp, 0x00200000
	mov esp,ebp

	;enable the A20 line
	in al, 0x92
	or al,2
	out 0x92, al

	;remap master PIC
	mov al,00010001b
	out 0x20,al
	out 0xA0,al

	;Sending base vector number of master and slave PIC
	mov al,20h ;base vector number of master PIC
	out 0x21,al
	mov al,28h ;base vector number of slave PIC
	out 0xA1,al

	;Sending connection parameters between the PICs to the PICs
	mov al,00000100b ;IRQ2 is connected to slave PIC
	out 0x21,al
	mov al,2h ;IRQ2 of master PIC is used for the slave PIC
	out 0xA1,al

	;Sending ICW4 to master and slave PIC
	mov al,00000001b ;Intel environment, manual EOI
	out 0x21,al

	;end remap the master PIC

	call kernel_main
	jmp $

kernel_registers: ;point registers to the kernel segment
	mov ax,0x10
	mov ds,ax
	mov es,ax
	mov gs,ax
	mov fs,ax
	ret
	
times 512-($ - $$) db 0
