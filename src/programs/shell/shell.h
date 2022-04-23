#ifndef SHELL_H
#define SHELL_H
#include "../std/memop.h"
#include "../std/string.h"
#include "../std/vga.h"
#include <stdint.h>

namespace shell {
class Shell {
public:
  Shell();
  ~Shell();
  void run();
  std::string getShellVersion() const;
  std::string getPrompt() const;
  void displayPrompt(Colors);
  void shell_readline(std::string &str, bool show_while_typing);
  void cls();
  void parse_command(std::string& cmd,unsigned &);
  int dir(const std::string& path);
  void mkdir(const std::string& path);
  unsigned int cmdhash(const char* cstr,int l,int b) const;
  void del(const std::string& path);
  void cd(const std::string& path);
private:
  std::string shell_version;
  std::string prompt;
  std::string line;
  std::string current_directory;
  vga::Graphics graphics;
  unsigned current_x;
  unsigned current_y;
};
} // namespace shell

#endif