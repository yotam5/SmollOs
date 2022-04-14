#include "./shell.h"
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"
#include "../std/vga.h"

Shell::Shell()
:
shell_version("SmollOs 1.0\n"),
prompt("> ")
{
    /*
    note: if not initialize in : then will be deleted unless using new
    */
    print("constructor called\n");
    print("constructor finished\n");
}
Shell::~Shell()
{
    print("destructor called\n");
}

void Shell::run()
{    
    char buff[1024];
    print(this->shell_version.c_str());
    while(true)
    {
        print(this->prompt.c_str());
        smollos_terminal_readline(buff, sizeof(buff), true);
        print("\n");
    }
}

int main(int argc, char** argv)
{

    print("\nbefore initialize\n");
    Shell sh = Shell();
    Graphics g = Graphics();
    g.putCharAt(0, 0, 'K', Colors::VG_WHITE);
    //print("\nafter initialize\n");
    //print("before sh\n");
    //print("after sh\n");
    //sh.run();
    print("after run\n");
    print("program exiting\n");
    return 0;
}