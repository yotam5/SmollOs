#include "./shell.h"
#include "../stdlib/smollos.h"
#include "../std/memop.h"

class demi
{
private: 
    int demo;
public:
    demi(int f)
    {
        this->demo = f;
    }
    int get(){return this->demo;}
};


class test
{
public:
    test(int a)
    {
        print("p was allocated\n");
        this->p = new demi(a);
    }
    int getinter()
    {
        return this->p->get();
    }
    ~test()
    {
        print("p was deleted\n");
        delete this->p;
    }
private:
    demi *p;
};
int main(int argc, char** argv)
{
    test* t = new test(22);
    int n = t->getinter();

    print("SmollOs v1.0\n");
    print("> ");
    char buff[1024];
    
    while(0){
        smollos_terminal_readline(buff, sizeof(buff), true);
        print("\n> ");
        //smollos_getkeyblock();
        //smollos_system_run(buff);
        //smollos_process_load_start(buff);
    }
    //t->~test();
    delete t;
    return 0;
}