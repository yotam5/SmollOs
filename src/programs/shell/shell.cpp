#include "./shell.h"
#include "../stdlib/smollos.h"

Shell::Shell() : 
prompt("> "),
shell_version("SmollOs 1.0\n")
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
    this->shell_version[0] = 'A';
    this->prompt[0] = '-';
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
    Shell sh = Shell();

    sh.run();
    print("program exiting\n");
    return 0;
}