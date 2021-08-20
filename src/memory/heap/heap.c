#include "heap.h"


static int heap_validate_alignment(void *ptr){
	return ((unsigned int) ptr % SmollOs_HEAP_BLOCK_SIZE) == 0;
}

int heap_create(struct heap* heap, void* ptr, void* end, struct heap_table* table);
{
	int res = 0;
	res = -EIO
	return res;
}