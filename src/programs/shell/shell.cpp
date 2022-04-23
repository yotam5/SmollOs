#include "./shell.h"
#include "../std/vga.h"
#include "../stdlib/smollos.h"
#include "../stdlib/stdio.h"
#include "../std/vector.h"
#include "../../programs/stdlib/string.h"
//#include "../../fs/interfs.h"
#include <stdint.h>

#define SHELL_DEBUG 0
namespace shell {
Shell::Shell()
    : shell_version("SmollOs 1.0"), prompt(">"), line(1024), current_directory("/"), graphics(20, 80),
      current_x(0), current_y(0) {
  /*
  note: if not initialize in : then will be deleted unless using new
  */

#if SHELL_DEBUG
  print("constructor called\n");
  print("constructor finished\n");
#endif
}
Shell::~Shell() {
#if SHELL_DEBUG
  print("destructor called\n");
#endif
}

void Shell::displayPrompt(Colors color = Colors::VGA_GREEN) {
  this->graphics.putStringAt(this->current_x++, this->current_y, this->prompt,
                             color);
}

void Shell::shell_readline(std::string &str, bool show_while_typing = true) {
  char key;
  while (key != 13) {
    key = smollos_getkeyblock();
    if (show_while_typing) {
      switch (key) {
      case 0x8:
        str.erase(str.len() - 1, 1);
        if (show_while_typing) {
          this->graphics.putCharAt(this->current_x, this->current_y, ' ',
                                   Colors::VGA_BLACK);
          this->current_x == 1 ? this->current_x : --this->current_x;
        }
        break;
      default:
        this->graphics.putCharAt(this->current_x++, this->current_y, key,
                                 Colors::VGA_GREEN);
        str += key;
        break;
      }
    }
  }
  str.erase(str.len()-1,1);
  // print(str.c_str());
}

unsigned int Shell::cmdhash(const char* cstr,int length,int b=100) const
{
  unsigned long int hash = 5381;
  int index = 0;
  int c;
  while (length-- && (c = *cstr++)) {
      hash = ((hash << 5) + hash) + c; /* hash * 33 + c */
  }
  return hash % b;
}


int Shell::dir(const std::string& path)
{
  DIR* dir;
  FILINFO* fno = new FILINFO;
  char buff[1024];
  int xs = 1;
  int ys = this->current_y + 1;
  dir = smollos_opendir(path.c_str());
  int s = 1;
  for(;;){
    smollos_freaddir(dir,fno);
    if(fno->fname[0] == 0){break;}
    int l = this->graphics.putStringAt(xs,ys,fno->fname,Colors::VGA_WHITE);
    if(s++ % 4 == 0){
      ++ys;
      xs = 1;
    }
    else{    
      xs += strlen(fno->fname);
      ++xs;
    }
  }
  delete fno;
  return ys - this->current_y;
}

void Shell::cls()
{
  this->current_x = this->prompt.len();
  this->current_y = 0;
  this->graphics.cls();
}

void Shell::mkdir(const std::string &path)
{
  std::string c = path;
  int space = path.find(' ');
  c.erase(0,space+1);
  smollos_mkdir(c.c_str());
}

void Shell::del(const std::string& path)
{
  std::string c = path;
  int space = path.find(' ');
  c.erase(0,space+1);
  smollos_funlink(c.c_str());
}


void Shell::parse_command(std::string& cmd,unsigned& y)
{ 

  int first_space = cmd.find(' ');
  int proglen = cmd.len();
  if(first_space > 0){
    proglen = first_space;
  }
  unsigned long int key = this->cmdhash(cmd.c_str(),proglen,100);
  switch(key)
  {
    case 76:
      y+=this->dir(this->current_directory);
      break;
    case 56:
        this->mkdir(this->line);
        break;
    case 38:
      this->del(this->line);
      break;
    case 8:
      this->cls();
      //print("ERROR, no such command");
      break;
    default:
      break;
  }
}

void Shell::run() {
  // print(this->shell_version.c_str());
  this->displayPrompt();
  while (true) {
    this->shell_readline(this->line);
    this->parse_command(this->line,this->current_y);
    ++this->current_y;
    this->current_x = 0;
    this->displayPrompt();
    this->line.clear();
  }
}
} // namespace shell
int main(int argc, char **argv) {
  std::string str = "0123456789";

  shell::Shell sh = shell::Shell();
  // print("\nafter initialize\n");
  // print("before sh\n");
  // print("after sh\n");
  // sh.run();
  // smollos_terminal_readline(buff, sizeof(buff), true);
   sh.run();
  std::string ch("mkdir /tmp");
  std::string f = ch;
  int pos = f.find(' ');
  f.erase(0,++pos);
  print("\n");
  print(f.c_str());
  print("\n");
  print("program exiting\n");
  return 0;
}