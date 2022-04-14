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

void Graphics::putCharAt(int x, int y, char c, Colors color=Colors::VGA_WHITE)
{
    user_putchar(x, y, this->make_char(c, color));
}

void Graphics::putStringAt(int x,int y,const String& s,Colors color)
{
    for(unsigned i = 0;i < s.len();i++)
    {
        this->putCharAt(x,y,s[i],color);
        ++x;
    }
}

void Graphics::cls()
{
    for(unsigned x = 0; x < this->width;x++)
    {
        for(unsigned y = 0; y < this->height;y++)
        {
            this->putCharAt( x,  y, this->make_char(' ', Colors::VGA_BLACK));
        }
    }
}

uint16_t Graphics::make_char(char c, Colors color) const
{
    uint16_t res = static_cast<uint16_t>((static_cast<char>(color) << 8) | c);
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