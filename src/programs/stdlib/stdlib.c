#include "./stdlib.h"
#include "./smollos.h"
#include <stddef.h>
#include "../../string/string.h"

void* malloc(size_t size){
    return smollos_malloc(size);
}

void free(void* ptr)
{
    smollos_free(ptr);
}

char *reverse(char *str)
{
    char tmp, *src, *dst;
    size_t len;
    if (str != NULL)
    {
        len = strlen (str);
        if (len > 1) {
            src = str;
            dst = src + len - 1;
            while (src < dst) {
                tmp = *src;
                *src++ = *dst;
                *dst-- = tmp;
            }
        }
    }
    return str;
}

/* itoa from K&R */
char* itoa(int n)
{
    char s[50];
    int i, sign;

    if ((sign = n) < 0)        /* record sign */
        n = -n;                /* make n positive */
    i = 0;

    do {                       /* generate digits in reverse order */
        s[i++] = n % 10 + '0'; /* get next digit */
    } while ((n /= 10) > 0);   /* delete it */

    if (sign < 0)
        s[i++] = '-';

    reverse(s);
    s[i] = '\0';
    return 0;
}
