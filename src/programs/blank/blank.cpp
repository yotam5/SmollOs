
#include "../stdlib/smollos.h"
#include "../stdlib/stdlib.h"
#include "../stdlib/stdio.h"
#include "../stdlib/string.h"

int main(int argc, char** argv)
{
    //void* ptr = malloc(512);
    //free(ptr);
    /*print("123\n");
    itoa(45);
    print("\nprinted\n");
    printf("my age is %i\n",98);*/
    print("called\n");
    char words[] = "hello how are you";
    char delim[] = {" "};
    const char* token = strtok(words,delim);
    while(token){
        print(token);
        token = strtok(NULL,delim);
        print("\n");
    }
    
    return 0;
}