#include <stdint.h>
#include "paging.h"
#include "../heap/kheap.h"
#include "../../status.h"
void print(const char* str);
static uint32_t* current_directory = 0;
void paging_load_directory(uint32_t* directory);

//create page directory with page tables
struct paging_4g_chunk* paging_new_4gb(uint8_t flags){
    uint32_t* directory = kzalloc(sizeof(uint32_t)*PAGING_TOTAL_ENTRIES_PER_TABLE);
    int offset = 0;
    for(int i = 0;i < PAGING_TOTAL_ENTRIES_PER_TABLE;i++){
        uint32_t* entry = kzalloc(sizeof(uint32_t)*PAGING_TOTAL_ENTRIES_PER_TABLE);
        for(int b = 0;b< PAGING_TOTAL_ENTRIES_PER_TABLE;b++){
            entry[b] = (offset + (b*PAGING_PAGE_SIZE)) | flags;
        }
        offset += (PAGING_TOTAL_ENTRIES_PER_TABLE*PAGING_PAGE_SIZE);
        directory[i] = (uint32_t)entry | flags | PAGING_IS_WRITABLE;
    }

    struct paging_4g_chunk* chunk_4g = kzalloc(sizeof(struct paging_4g_chunk));
    chunk_4g->directory_entry = directory;
    return chunk_4g;
}

void paging_switch(uint32_t* directory){
    paging_load_directory(directory);
    current_directory  = directory;
}

uint32_t* paging_4gb_chunk_get_directory(struct paging_4g_chunk* chunk){
    return chunk->directory_entry;
}


bool paging_is_aligned(void *addr){
    return (uint32_t)addr % PAGING_PAGE_SIZE == 0;
}

//resolve address to directory entry and table address
int paging_get_indexes(void* virtual_address, uint32_t *directory_index_out,
    uint32_t* table_index_out)
{
    int res = 0;
    if(!paging_is_aligned(virtual_address)){
        print("paging is not align"); 
        res = -EINVARG;
        goto out;
    }
    *directory_index_out = ((uint32_t)virtual_address / (PAGING_TOTAL_ENTRIES_PER_TABLE * PAGING_PAGE_SIZE));
    *table_index_out = ((uint32_t)virtual_address % (PAGING_TOTAL_ENTRIES_PER_TABLE * PAGING_PAGE_SIZE) / PAGING_PAGE_SIZE);    out:
    return res;
}

int paging_set(uint32_t *directory, void* virt,uint32_t val)
{
    print("\nenter paging set\n");
    if(!paging_is_aligned(virt)){
        print("paging error");
        return -EINVARG;
    }
    uint32_t directory_index = 0;
    uint32_t table_index = 0;
    int res = paging_get_indexes(virt,&directory_index,&table_index);
    if(res < 0){
        print("res error");
        return res;
    }
    uint32_t entry = directory[directory_index];
    uint32_t* table = (uint32_t*)(entry & 0xfffff000);
    table[table_index] = val;
    return 0;
}