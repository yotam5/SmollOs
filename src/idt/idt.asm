section .asm

extern int21h_handler
extern no_interrupt_handler
extern isr80h_handler
extern interrupt_handler
global isr80h_wrapper
global no_interrupt
global idt_load
global interrupt_pointer_table
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

no_interrupt:
	pushad
	call no_interrupt_handler
	popad
	iret

%macro interrupt 1
	global int%1
	int%1:
		pushad
		push esp
		push dword %1
		call interrupt_handler
		add esp,8
		popad
		iret
%endmacro

%assign i 0
%rep 512
	interrupt i
%assign i i+1
%endrep

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

%macro interrupt_array_entry 1
	dd int%1
%endmacro

interrupt_pointer_table:
%assign i 0
%rep 512
	interrupt_array_entry i
%assign i i+1
%endrep