#include "./shell.h"
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"
#include "../std/vga.h"

#define SHELL_DEBUG 0
Shell::Shell()
:
shell_version("SmollOs 1.0"),
prompt(">"),
line(1024),
graphics(20,80),
current_x(0),
current_y(0)
{
    /*
    note: if not initialize in : then will be deleted unless using new
    */

    #if SHELL_DEBUG
    print("constructor called\n");
    print("constructor finished\n");
    #endif
}
Shell::~Shell()
{
    #if SHELL_DEBUG
    print("destructor called\n");
    #endif
}

void Shell::displayPrompt(Colors color=Colors::VGA_GREEN)
{
    this->graphics.putStringAt(this->current_x++,this->current_y,this->prompt,color);
}


void Shell::shell_readline(String& str,bool show_while_typing=true)
{
    char key;
    while(key != 13)
    {
        key = smollos_getkeyblock();
        if(show_while_typing)
        {
            switch(key)
            {
                case 0x8:
                    str.erase(str.len()-1, 1);
                    if(show_while_typing){
                        this->graphics.putCharAt(this->current_x,this->current_y,' ',Colors::VGA_BLACK);
                        this->current_x == 1 ? this->current_x : --this->current_x;
                    }
                break;
                default:
                    this->graphics.putCharAt(this->current_x++,this->current_y,key,Colors::VGA_GREEN);
                    str += key;
                break;
            }
        }
    }
    //print(str.c_str());
}

void Shell::run()
{    
    //print(this->shell_version.c_str());
    this->displayPrompt();
    while(true)
    {
        this->shell_readline(this->line);
        ++this->current_y;
        this->current_x = 0;
        this->displayPrompt();
    }
}

int main(int argc, char** argv)
{   

    String str = "0123456789";

    Shell sh = Shell();
    //print("\nafter initialize\n");
    //print("before sh\n");
    //print("after sh\n");
    //sh.run();
    //smollos_terminal_readline(buff, sizeof(buff), true);
    sh.run();
    print("program exiting\n");
    return 0;
}