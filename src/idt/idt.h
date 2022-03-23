#ifndef IDT_H
#define IDT_H
#include <stdint.h>

struct interrupt_frame;
typedef void*(*ISR80H_COMMAND)(struct interrupt_frame* frame);
typedef void(*INTERRUPT_CALLBACK_FUNCTION)();
void idt_init();
void enable_interrupts();
void disable_interrupts();
int idt_register_interrupt_callback(int interrupt, INTERRUPT_CALLBACK_FUNCTION interrupt_callback);
struct idt_desc
{
	uint16_t offset_1; //offset 0-15
	uint16_t selector; //
	uint8_t zero; //unused set to zero
	uint8_t type_attr; //descriptor type and attribute
	uint16_t offset_2; //offset 16-31
} __attribute__((packed));

struct idtr_desc
{
	uint16_t limit; //size of descriptor table
	uint32_t base; //base address of the start of the intterupt desc table
} __attribute__((packed));

struct interrupt_frame
{
	uint32_t edi;
	uint32_t esi;
	uint32_t ebp;
	uint32_t reserved;
	uint32_t ebx;
	uint32_t edx;
	uint32_t ecx;
	uint32_t eax;
	uint32_t ip;
	uint32_t cs;
	uint32_t flags;
	uint32_t esp; //userland stack pointer
	uint32_t ss;
}__attribute__((packed));
void isr80h_register_command(int command_id, ISR80H_COMMAND command);
#endif
