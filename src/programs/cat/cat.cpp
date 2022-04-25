
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"

int main(int argc, char** argv)
{
    //print("run");
    print(argv[0]);
    FILINFO fno;
    smollos_fstat(argv[1],&fno);
    char* buff = (char*)smollos_malloc(fno.fsize);
    FIL* fd = smollos_fopen(argv[1], 1);
    smollos_fread(buff,fno.fsize,1,fd);
    smollos_fclose(fd);
    print(buff);
    return 0;
}