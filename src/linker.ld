ENTRY(_start)
OUTPUT_FORMAT(binary)
SECTIONS
{
	. = 1M;
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
        *(SORT(.ctors*))  /* Note the "SORT" */
        end_ctors = .;

        start_dtors = .;
        *(SORT(.dtors*))
        end_dtors = .;

        *(.rodata*)
	}

	.data : ALIGN(4096)
	{
		*(.data)
	}

	.bss : ALIGN(4096)
	{
        sbss = .;
        *(COMMON)
        *(.bss)
        ebss = .;
	}
    /DISCARD/ :
    {
        *(.comment)
        *(.eh_frame) /* discard this, unless you are implementing runtime support for C++ exceptions. */
    }
}