
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"
#include "../std/vga.h"

int main(int argc, char** argv)
{

    //struct process_arguments arguments;
    //smollos_process_get_arguments(&arguments);
    //print("called ok\n");
    print("blank called\n");
    int r = smollos_fopen("/hello.txt",1);
    print("file opened\n");
    char buff[100];
    int n = smollos_fread(buff,sizeof(buff),1,r);
    print("file was read\n");
    print(buff);
    smollos_fclose(r);
    r = smollos_fopen("/hello.txt", 2);
    print("\n");
    char data[] = "ABCDEFSHIT";
    smollos_fwrite(r, data, sizeof(data), NULL);
    smollos_fclose(r);
    r = smollos_fopen("/hello.txt", 1);
    char buff2[100];
    print("data written\n");
    smollos_fread(buff2,sizeof(buff2),1,r);
    print(buff2);
    print("file was read again\n");
    //smollos_getkeyblock();
    while(true){
    }
    print("exited\n");
    return 0;
}