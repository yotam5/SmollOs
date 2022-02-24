#include "string.h"
#include <stdbool.h>

int strlen(const char *ptr)
{
    int i = 0;
    while(*ptr != 0){
        i++;
        ptr++;
    }
    return i;
}

bool isdigit(char c)
{
    return c >= 48 && c <= 57;
}

int tonummericdigit(char c)
{
    return  - 48;
}

int strnlen(const char *ptr,int max)
{
    int i = 0;
    while(i < max &&*ptr != 0)
    {
        i++;
    }
    return i;
}