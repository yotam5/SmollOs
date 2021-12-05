#include "paging.h"
#include <stdint.h>
#include "../heap/kheap.h"


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