
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"
#include "../std/vga.h"

int main(int argc, char** argv)
{

    //struct process_arguments arguments;
    //smollos_process_get_arguments(&arguments);
    //print("called ok\n");
    FIL* f = smollos_fopen("/hello.txt",1);
    FILINFO fno;
    smollos_fstat("/hello.txt",&fno);
    print(fno.fname);
    char buff[100];
    smollos_fread(buff,10,1,f);
    smollos_fclose(f);
    print(buff);
    smollos_mkdir("/test");
    DIR*d = smollos_opendir("/");
    FILINFO fno2;
    smollos_freaddir(d,&fno2);
    print("monkee\n");
    print(fno2.fname);
    print("monkeee\n");
    if(&fno2){}
    smollos_closedir(d);
    print("dir closed\n");
    return 0;
}