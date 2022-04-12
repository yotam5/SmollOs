#ifndef SHELL_H
#define SHELL_H
#include "../std/memop.h"

class Shell
{
public:
    Shell();
    ~Shell();
    void run();
char* getShellVersion() 
{
    return this->shell_version;
}
char* getPrompt() 
{
    return this->prompt;
}
private:
    char* shell_version;
    char* prompt;
};

#endif