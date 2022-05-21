#ifndef VGA_H
#define VGA_H
#include "./colors.h"
#include "./string.h"
#include <stddef.h>
#include <stdint.h>
// /video_mem = (uint16_t*)(0xB8000)
// frame buffer or something?
namespace vga {
class Graphics {
public:
  Graphics();
  Graphics(unsigned h, unsigned w);
  ~Graphics();
  uint16_t make_char(char c, Colors color) const;
  void putStringAt(int x, int y, const std::string &, Colors);
  int putStringAt(int x,int y, const char* buff,Colors);
  void putStringAtCurr(const std::string &, Colors);
  void putStringAtCurr(const char* buff, Colors color);
  static void downLine();
  // void move_cursor(unsigned short pos);
  // void set_cursor(unsigned x, unsigned y);
  unsigned getWidth() const;
  unsigned getHeight() const;
  uint16_t getVideoMemoryStart() const;
  void putCharAt(int x, int y, char c, Colors color);
  void cls();
   void test();
    static unsigned currx;
  static unsigned curry;
private:
  unsigned width;
  unsigned height;
  uint16_t *videoMemoryStart;
};

} // namespace vga
#endif