
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"
#include "../std/vga.h"

int main(int argc, char** argv)
{

    //struct process_arguments arguments;
    //smollos_process_get_arguments(&arguments);

    /*for(int i = 0; i < argc;i++)
    {
        print(argv[i]);
        print("\n");
    }*/
    //print("called ok\n");
    print("blank called\n");
    int r = smollos_fopen("/hello.txt",1);
    print("file opened\n");
    char buff[100];
    int n = smollos_fread(buff,sizeof(buff),1,r);
    print("file was read\n");
    print(buff);
    while(1){
        
        //print("monke1 ");
        //smollos_getkeyblock();
        //print("monkeee\n");
    }
    return 0;
}