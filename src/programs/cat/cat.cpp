
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"

int main(int argc, char** argv)
{
    int fd = smollos_fopen(argv[0],1);
    char buffer[1024];
    smollos_fread(buffer, sizeof(buffer), 1, fd);
    smollos_fclose(fd);
    print(buffer);
    print("\n");
    return 0;
}