#include "./shell.h"
#include "../stdlib/smollos.h"

int main(int argc, char** argv)
{
    print("SmollOs v1.0\n");
    print("> ");
    while(1){
        char buff[1024] = {};
        if(buff[0]){}
        //smollos_getkeyblock();
        print("key");
        smollos_terminal_readline(buff, sizeof(buff), true);
        //smollos_getkeyblock();
        //smollos_system_run(buff);
        //smollos_process_load_start(buff);
    }
    return 0;

}