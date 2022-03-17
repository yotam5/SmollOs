section .asm

extern int21h_handler
extern no_interrupt_handler
extern isr80h_handler
global isr80h_wrapper
global no_interrupt
global idt_load
global int21h
global enable_interrupts
global disable_interrupts

enable_interrupts:
	sti
	ret

disable_interrupts:
	cli
	ret

idt_load:
	push ebp
	mov ebp,esp	
	mov ebx,[ebp+8]
	lidt [ebx]
	pop ebp
	ret

int21h:
	pushad
	call int21h_handler
	popad
	iret

no_interrupt:
	pushad
	call no_interrupt_handler
	popad
	iret

isr80h_wrapper:
	;interrupt frame start
	;already pushed to us by the porcessor upon this interrupt
	;uint32_t ip,cs,flags,sp,ss
	pushad

	;interrupt frame end
	push esp
	push eax
	call isr80h_handler
	mov dword[tmp_res],eax
	add esp,8
	popad
	mov eax,[tmp_res]
	iretd

section .data

;store the return result from isrh80h_handler
tmp_res: dd 0