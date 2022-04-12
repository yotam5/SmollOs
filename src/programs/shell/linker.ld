
ENTRY(_start)
OUTPUT_FORMAT(elf32-i386)
SECTIONS
{
	. = 0x400000;
	.text : ALIGN(4096)
	{
		*(.text)
	}
	.asm :	ALIGN(4096)
	{
		*(.asm)
	}

	.rodata : ALIGN(4096)
	{
		start_ctors = .;
		*(SORT(.ctors*))
		end_ctor = .;

		start_dtors = .;
		*(SORT(.dtors*))
		end_dtors = .;


		*(.rodata)
	}

	.data : ALIGN(4096)
	{
		*(.data)
	}

	.bss : ALIGN(4096)
	{
		*(COMMON)
		*(.bss)
	}
}