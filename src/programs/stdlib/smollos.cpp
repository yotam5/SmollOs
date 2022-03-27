#include "./smollos.h"

int smollos_getkeyblock()
{
    int val = 0;
    do{
        val = smollos_getkey();
    } while(val == 0);
    return val;
}

//while typing true, see written, false cant see written(password etc..)
void smollos_terminal_readline(char* out,int max, bool output_while_typing)
{
    int i = 0;
    for(i = 0; i < max - 1;i++)
    {
        char key = smollos_getkeyblock();
        if(key == 13){
            break; //carriage return, line read
        }
        if(output_while_typing)
        {
            smollos_putchar(key);
        }
        if(key == 0x08 && i >= 1)
        {
            out[i-1] = 0x00;
            i-=2;
            continue;
        }
        out[i] = key;
    }
    out[i] = 0x00;
}