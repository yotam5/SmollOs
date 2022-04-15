#ifndef SHELL_H
#define SHELL_H
#include "../std/memop.h"
#include "../std/string.h"
#include "../std/vga.h"
#include <stdint.h>
class Shell
{
public:
    Shell();
    ~Shell();
    void run();
    String getShellVersion() const;
    String getPrompt() const;
    void displayPrompt(Colors);
    void shell_readline(String& str,bool show_while_typing);
    void cls();
private:
    String shell_version;
    String prompt;
    String line;
    Graphics graphics;
    unsigned current_x;
    unsigned current_y;
};

#endif