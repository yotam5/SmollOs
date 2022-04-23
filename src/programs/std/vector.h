#include "./memop.h"


namespace std
{
    template<class T>
    class vector
    {   
    public:
        vector(const vector<T>&other) = delete;
        vector<T>  operator = (const vector<T>& other) = delete;
        vector(size_t n);
        vector();
        ~vector();
        T* begin() const;
        T* end() const;
        const T* cbegin() const;
        const T* cend() const;
        void push_back(T elem);
        T pop_back();
        T& operator[](size_t index) const;
        T& at(size_t index) const;
        size_t capacity() const;
        void clear();
        bool empty() const;
        T& front() const;
    private:
        size_t capacity_,size_; 
        T* ptr = nullptr;
    };
}