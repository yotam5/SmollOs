#include "string.h"
#include <stdbool.h>

bool ischar(char s1)
{
    return s1 >= 65 && s1 <= 90;
}

char tolower(char s1)
{
    if(ischar(s1))
    {
        s1 += 32;
    }
    return s1;
}

int istrncmp(const char* str1, const char* str2, int n)
{
    unsigned char u1,u2;
    while(n-- > 0)
    {
        u1 = (unsigned char)*str1++;
        u2 = (unsigned char)*str2++;
        if(u1 != u2 && tolower(u1) != tolower(u2))
        {
            return u1 - u2;
        }
        if(u1 == '\0'){
            return 0;
        }
    }
    return 0;
}

int strncmp(const char* str1, const char* str2, int n)
{
    unsigned char u1,u2;
    while(n-- > 0)
    {
        u1 = (unsigned char)*str1++;
        u2 = (unsigned char)*str2++;
        if(u1 != u2){
            return u1 - u2;
        }
        if(u1 == '\0')
        {
            return 0;
        }
    }
    return 0;
}

int strlen_terminator(const char* str, int max, char terminator)
{
    int i = 0;
    for(int i = 0; i < max;i++){
        if(str[i] == 0 || str[i] == terminator){
            break;
        }
    }
    return i;
}

int strlen(const char *ptr)
{
    int i = 0;
    while(*ptr != 0){
        i++;
        ptr+=1;
    }
    return i;
}

bool isdigit(char c)
{
    return c >= 48 && c <= 57;
}

int tonummericdigit(char c)
{
    return c - 48;
}

char* strcpy(char* dest,  const char* src)
{
    char* res = dest;
    while(*src != 0)
    {
        *dest = *src;
        ++src;
        ++dest;
    }
    *dest = 0x00;
    return res;
}

char* strncpy(char* dest, const char* src,int count)
{
    int i;
    for(i = 0;i < count - 1;i++)
    {
        if(src[i] == 0x00){
            break;
        }
        dest[i] = src[i];
    }
    dest[i] = 0x00;
    return dest;
}

int strnlen(const char *ptr,int max)
{
    int i = 0;
    for(i=0;i<max;i++){
        if(ptr[i] == 0){
            break;
        }
    }
    return i;
}

char *
strchr ( const char *s, int c)
{
  do {
    if (*s == c)
      {
	return (char*)s;
      }
  } while (*s++);
  return (0);
}