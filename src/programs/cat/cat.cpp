
#include "../stdlib/smollos.h"
#include <stdint.h>
#include "../stdlib/stdio.h"
#include "../std/vga.h"
#include "../std/string.h"

class test
{
public:
    static int n;
};

static int k = 34;

int test::n = 3;

int main(int argc, char** argv)
{
    static int w = 33;
    int f = w % w + 2;
    if(f){}
    test t;
    if(t.n == 0){}  
    t.n = -1;
    if(t.n > k){}
    //print("run");
    FILINFO fno;
    smollos_fstat(argv[1],&fno);
    char* buff = (char*)smollos_malloc(fno.fsize);
    FIL* fd = smollos_fopen(argv[1], 1);
    smollos_fread(buff,fno.fsize,1,fd);
    smollos_fclose(fd);
    vga::Graphics g;
    g.currx = 0;
    g.curry = 0;
    g.putStringAtCurr(buff,Colors::VGA_WHITE);
    print("printed\n");
    return 0;
}