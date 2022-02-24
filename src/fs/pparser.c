#include "pparser.h"
#include "../kernel.h"
#include "../kernel.h"
#include "../memory/heap/kheap.h"
#include "../memory/memory.h"
#include "../string/string.h"

static int path_valid_format(const char* filename)
{
    int len = strnlen(filename, SmollOs_MAX_PATH);
    return len >= 3 && isdigit(filename[0]) && memcmp((void*)&filename[0],":/",2) == 0;
}