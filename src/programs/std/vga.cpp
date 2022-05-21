#include "./vga.h"
#include "../stdlib/smollos.h"
#include <stdint.h>

namespace vga {
unsigned vga::Graphics::currx = 0;
unsigned vga::Graphics::curry = 0;
Graphics::Graphics(unsigned h, unsigned w) 
{
  test();
  print("supposed to work i guess\n");
  this->height = h;
  this->width = w;
  this->videoMemoryStart = (uint16_t *)0xB8000;
}

void Graphics::test()
{
  vga::Graphics::curry = 0;
  vga::Graphics::currx = 0;
}

Graphics::Graphics() {
  this->width = 80;
  this->height = 20;
  this->videoMemoryStart = (uint16_t *)0xB8000;
}

void Graphics::putCharAt(int x, int y, char c,
                         Colors color = Colors::VGA_WHITE) {
  user_putchar(x, y, this->make_char(c, color));
}

void Graphics::putStringAt(int x, int y, const std::string &s, Colors color) {
  for (unsigned i = 0; i < s.len(); i++) {
    this->putCharAt(x, y, s[i], color);
    ++x;
    ++vga::Graphics::currx;
  }
}

int Graphics::putStringAt(int x,int y, const char* buff,Colors color)
{
  for(unsigned i = 0; buff[i] != '\0';i++){
    this->putCharAt(x, y, buff[i],color);
    ++x;
    ++vga::Graphics::currx;
  }
  return x;
}

void Graphics::putStringAtCurr(const std::string &s, Colors color)
{
  for (unsigned i = 0; i < s.len(); i++) {
    this->putCharAt(vga::Graphics::currx, vga::Graphics::curry, s[i], color);
    ++vga::Graphics::currx;
  }
}

void Graphics::putStringAtCurr(const char* buff, Colors color)
{
  for (unsigned i = 0; buff[i] != '\0'; i++) {
    this->putCharAt(vga::Graphics::currx, vga::Graphics::curry, buff[i], color);
  ++vga::Graphics::currx;
    }
}

void Graphics::downLine()
{
}

void Graphics::cls() {
  for (unsigned x = 0; x < this->width; x++) {
    for (unsigned y = 0; y < this->height; y++) {
      this->putCharAt(x, y, this->make_char(' ', Colors::VGA_BLACK));
    }
  }
}

uint16_t Graphics::make_char(char c, Colors color) const {
  uint16_t res = static_cast<uint16_t>((static_cast<char>(color) << 8) | c);
  return (uint16_t)res;
}

uint16_t Graphics::getVideoMemoryStart() const {
  return *this->videoMemoryStart;
}

unsigned Graphics::getHeight() const { return this->height; }

unsigned Graphics::getWidth() const { return this->width; }

Graphics::~Graphics() {}
} // namespace vga

