#include "./vga.h"
#include "../stdlib/smollos.h"
#include <stdint.h>

Graphics::Graphics(unsigned h, unsigned w)
{
    this->height = h;
    this->width = w;
    this->videoMemoryStart= (uint16_t*)0xB8000;
}

Graphics::Graphics()
{
    this->width = 80;
    this->height = 20;
    this->videoMemoryStart = (uint16_t*)0xB8000;
}

void Graphics::putCharAt(int x, int y, char c, Colors color)
{
    user_putchar(x, y, this->make_char(c, color));
}

uint16_t Graphics::make_char(char c, Colors color) const
{
    int res = (static_cast<char>(color) << 8) | c;
    return (uint16_t)res;
}


uint16_t Graphics::getVideoMemoryStart() const
{
    return *this->videoMemoryStart;
}

unsigned Graphics::getHeight() const
{
    return this->height;
}

unsigned Graphics::getWidth() const
{
    return this->width;
}

Graphics::~Graphics()
{

}