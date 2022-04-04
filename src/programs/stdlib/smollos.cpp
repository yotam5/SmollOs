#include "./smollos.h"
#include "./string.h"
struct command_argument* smollos_parse_command(const char* command, int max)
{
    char scommand[1025];
    struct command_argument* root_command = 0;
    if(max >= (int)sizeof(scommand)){
        return 0;
    }
    strncpy(scommand,command,sizeof(scommand));
    char delim[] = {" "};
    char* token = strtok(scommand,delim);

    if(!token)
    {
        print("no root command\n");
        return root_command;
    }
    root_command = (struct command_argument*)smollos_malloc(sizeof(struct command_argument));
    if(!root_command)
    {
        print("no root command\n");
        return root_command;
    }
    strncpy(root_command->argument,token,sizeof(root_command->argument));
    root_command->next = 0;

    struct command_argument* current = root_command;
    token = strtok(NULL,delim);
    print(token);
    while(token!=0){
        struct command_argument* new_command = (struct command_argument*)smollos_malloc(sizeof(struct command_argument));
        if(!new_command){
            break;
        }
        strncpy(new_command->argument,token,sizeof(new_command->argument));
        new_command->next = 0x00;
        current->next = new_command;
        current = new_command;
        token = strtok(NULL,delim);
    }
    out:
    return root_command;
}

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

int smollos_system_run(const char* command)
{
    char buf[1024];
    strncpy(buf,command,sizeof(buf));
    struct command_argument* root_command_argument = smollos_parse_command(command, sizeof(buf));
    if(!root_command_argument){
        return -1;
    }
    return smollos_system(root_command_argument);
}