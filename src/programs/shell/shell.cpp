#include "./shell.h"
#include "../stdlib/smollos.h"

int main(int argc, char** argv)
{
    print("SmollOs v1.0\n");
    while(1){
        print("> ");
        char buff[1024];
        smollos_terminal_readline(buff, sizeof(buff), true);
        smollos_process_load_start(buff);
        print("\n");
    }
    return 0;

}