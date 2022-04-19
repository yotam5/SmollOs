
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"

int main(int argc, char** argv)
{
    FILINFO fno;
    smollos_fstat(argv[0],&fno);
    char* buff = (char*)smollos_malloc(fno.fsize);
    FIL* fd = smollos_fopen(argv[0], 1);
    smollos_fread(buff,sizeof(buff),1,fd);
    smollos_fclose(fd);
    print(buff);
    return 0;
}