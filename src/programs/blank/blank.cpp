
#include "../stdlib/smollos.h"
#include "../stdlib/stdlib.h"
int main(int argc, char** argv)
{
    //void* ptr = malloc(512);
    //free(ptr);
    itoa(12);
    print("printed\n");
    while(1)
    {
        if(getkey() != 0)
        {
            print("key was pressed\n");
        }
    }
    
    return 0;
}