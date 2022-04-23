
namespace mutex
{
    class Mutex
    {
        public:
            Mutex(char* name);
            ~Mutex();
            void lock(void);
            void unlock(void);
        private:
            int _lock;
            char* _name;
    };
}