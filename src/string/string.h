#ifndef STRING_H
#define STRING_H

#include "stdbool.h"

char tolower(char s1);
int istrncmp(const char* str1, const char* str2, int n);
char* strcpy(char* dest,  const char* src);
int strlen(const char* ptr);
int tonummericdigit(char c);
bool isdigit(char c);
int strnlen(const char *ptr,int max);
int strncmp(const char* str1, const char* str2, int n);
char* strncpy(char* dest, const char* src,int length);
#endif