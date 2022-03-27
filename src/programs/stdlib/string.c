#include "./string.h"
#include <stddef.h>
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

bool is_delim(char c, char *delim)
{
  while(*delim != '\0')
  {
    if(c == *delim)
      return true;
    delim++;
  }
  return false;
}

char *strtok(char *s, char *delim)
{
  static char *p; // start of the next search 
  if(!s)
  {
    s = p;
  }
  if(!s)
  {
    // user is bad user 
    return NULL;
  }

  // handle beginning of the string containing delims
  while(1)
  {
    if(is_delim(*s, delim))
    {
      s++;
      continue;
    }
    if(*s == '\0')
    {
      return NULL; // we've reached the end of the string
    }
    // now, we've hit a regular character. Let's exit the
    // loop, and we'd need to give the caller a string
    // that starts here.
    break;
  }

  char *ret = s;
  while(1)
  {
    if(*s == '\0')
    {
      p = s; // next exec will return NULL
      return ret;
    }
    if(is_delim(*s, delim))
    {
      *s = '\0';
      p = s + 1;
      return ret;
    }
    s++;
  }
}

