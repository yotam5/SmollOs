#ifndef STRING_H
#define STRING_H

#include "stdbool.h"

int strlen(const char* ptr);
int tonummericdigit(char c);
bool isdigit(char c);
int strnlen(const char *ptr,int max);
#endif