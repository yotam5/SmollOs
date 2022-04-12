#include "./shell.h"
#include "../stdlib/smollos.h"

Shell::Shell()
{
    print("constructor called\n");
    this->prompt = "> ";
    this->shell_version = "SmollOs 1.0\n";
}
Shell::~Shell()
{
    print("destructor called\n");
}

void Shell::run()
{
    char buff[1024];
    print(this->shell_version);
    while(true)
    {
        print(this->prompt);
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