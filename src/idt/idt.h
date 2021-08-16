#ifndef IDT_H
#define IDT_H
#include <stdint.h>

void idt_init();
void enable_interrupts();
void disable_interrupts();

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

#endif
