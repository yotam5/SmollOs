
#include "../stdlib/smollos.h"
#include "../stdlib/stdlib.h"
#include "../stdlib/stdio.h"
#include "../stdlib/string.h"

int main(int argc, char** argv)
{
    print("main");
    char* ptr = (char*)malloc(20);
    strcpy(ptr, "hello world");

    print(ptr);

    free(ptr);

    ptr[0] = 'B';
    print("abc\n");

    while(1) 
    {
    }
    return 0;
}