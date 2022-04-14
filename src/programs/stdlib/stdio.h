#ifndef STDIO
#define STDIO
#ifdef __cplusplus
extern "C" {
#endif
int putchar(char);
int printf(const char *fmt,...);
#ifdef __cplusplus
// if this is a C++ compiler, we need to close off the extern declaration.
};
#endif
#endif