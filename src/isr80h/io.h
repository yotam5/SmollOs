#ifndef ISR80H_IO_H
#define ISR80H_IO_H

struct interrupt_frame;
void* isr80h_command1_print(struct interrupt_frame* frame);
void *isr80h_command2_getkey(struct interrupt_frame* frame);
void* isr80h_command3_putchar(struct interrupt_frame* frame);
void* isr80h_command10_putchar(struct interrupt_frame* frame);
void* isr80h_command11_smollos_fopen(struct interrupt_frame* frame);
void* isr80h_command12_smollos_fread(struct interrupt_frame* frame);
void* isr80h_command13_smollos_fclose(struct interrupt_frame* frame);
void* isr80h_command14_smollos_mkdir(struct interrupt_frame* frame);
void* isr80h_command15_smollos_fwrite(struct interrupt_frame* frame);
#endif