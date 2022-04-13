#ifndef SHELL_H
#define SHELL_H
#include "../std/memop.h"
#include "../std/string.h"

class Shell
{
public:
    Shell();
    ~Shell();
    void run();
String getShellVersion() const;
String getPrompt() const;
private:
    String shell_version;
    String prompt;
};

#endif