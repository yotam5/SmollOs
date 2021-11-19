#include <stdbool.h>
#include "heap.h"
#include "../../kernel.h"
#include "../../status.h"
#include "../../memory/memory.h"

//validate the heap table
static int heap_validate_table(void *ptr, void* end, struct heap_table* table){
	int res = 0;
	size_t table_size = (size_t)(end - ptr);
	size_t total_heap_blocks = table_size / SmollOs_HEAP_BLOCK_SIZE;
	if(table->total != total_heap_blocks){
		print("not valid table");
		res = -EINVARG;
		goto out;
	}
out:
	return res;
}

static bool heap_validate_alignment(void *ptr){
	return ((long)ptr % SmollOs_HEAP_BLOCK_SIZE) == 0;
}

//create heap and check that its aligned
int heap_create(struct heap* heap, void* ptr, void* end, struct heap_table* table)
{
	int res = 0;
	if(!heap_validate_alignment(ptr) ||
		!heap_validate_alignment(end)){
		print("heap aligned invalid");
		res = -EINVARG;
			goto out;
		}
	memset(heap,0,sizeof(struct heap));
	heap->saddr = ptr;
	heap->table = table;
	res = heap_validate_table(ptr,end,table);
	if(res < 0){
		goto out;
	}

	size_t table_size = sizeof(HEAP_BLOCK_TABLE_ENTRY) * table->total;
	memset(table->entries,HEAP_BLOCK_TABLE_ENTRY_FREE,table_size);
out:
	return res;
}

static uint32_t heap_align_value_to_upper(uint32_t val){
	if((val % SmollOs_HEAP_BLOCK_SIZE) == 0){
		return val;
	}
	val = (val - (val % SmollOs_HEAP_BLOCK_SIZE));
	val += SmollOs_HEAP_BLOCK_SIZE;
	return val;
}

//allocate blocks on the heap and mark them for usage
void* heap_malloc_blocks(struct heap* heap, uint32_t total_blocks){
	void* address = 0;

	int start_block = heap_get_start_block(heap,total_blocks);

	if(start_block < 0){
		goto out;
	}
	address = heap_block_to_address(heap,start_block);

	//mark the blocks as taken
	heap_mark_blocks_taken(heap,start_block,total_blocks);
out:
	return address;
}

//mark block in the heap that are taken/used
void heap_mark_blocks_taken(struct heap* heap, int start_block,int total_blocks){
	int end_block = start_block + total_blocks - 1;
	HEAP_BLOCK_TABLE_ENTRY entry = HEAP_BLOCK_TABLE_ENTRY_TAKEN | HEAP_BLOCK_IS_FIRST;
	if(total_blocks > 1){
		entry |= HEAP_BLOCK_HAS_NEXT;
	}
	for(int i= start_block;i<= end_block;i++){
		heap->table->entries[i] = entry;
		entry = HEAP_BLOCK_TABLE_ENTRY_TAKEN;
		if(i!=end_block-1){
			entry |= HEAP_BLOCK_HAS_NEXT;
		}
	}
}

//get the entry type of a block in the heap
static int heap_get_entry_type(HEAP_BLOCK_TABLE_ENTRY entry){
	return entry & 0x0f; //extract entry type
}

//return the address of block n
void* heap_block_to_address(struct heap* heap, int block){
	return heap->saddr + (block*SmollOs_HEAP_BLOCK_SIZE);
}

//return the start block in heap for n blocks
int heap_get_start_block(struct heap* heap,uint32_t total_blocks){
	struct heap_table* table = heap->table;
	int bc = 0; //current block
	int bs = -1; //first_empty block

	for(size_t i = 0; i < table->total;i++){
		if(heap_get_entry_type(table->entries[i])!= HEAP_BLOCK_TABLE_ENTRY_FREE){
			bc = 0;
			bs = -1;
			continue;
		}

		//if this is the first block
		if(bs == -1){
			bs = i;
		}
		++bc;
		if(bc == total_blocks){
			break;
		}
	}
	if(bs == -1){
		return -ENOMEM;
	}
	return bs;
}

//allocate memory on the heap 
void* heap_malloc(struct heap *heap,size_t size){
	size_t algined_size = heap_align_value_to_upper(size);
	uint32_t total_heap_blocks = algined_size / SmollOs_HEAP_BLOCK_SIZE;
	return heap_malloc_blocks(heap,total_heap_blocks);
}

//return the block of an heap address
int heap_address_to_block(struct heap* heap,void* address){
	return ((long)(address - heap->saddr)) / SmollOs_HEAP_BLOCK_SIZE;
}

//mark blocks as free in the heap/release blocks
void heap_mark_blocks_free(struct heap* heap, int starting_block){
	struct heap_table* table = heap->table;
	for(int i = starting_block; i < (int)(table->total);i++){
		HEAP_BLOCK_TABLE_ENTRY entry = table->entries[i];
		table->entries[i] = HEAP_BLOCK_TABLE_ENTRY_FREE;
		if(!(entry & HEAP_BLOCK_HAS_NEXT)){
			break;
		}
	}
}

void heap_free(struct heap* heap,void* ptr){
	heap_mark_blocks_free(heap,heap_address_to_block(heap,ptr));
}