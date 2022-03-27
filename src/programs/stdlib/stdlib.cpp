#include "./stdlib.h"
#include "./smollos.h"
#include <stddef.h>

void* malloc(size_t size){
    return smollos_malloc(size);
}

void free(void* ptr)
{

}