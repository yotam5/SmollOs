#include "./memop.h"


namespace std
{
    template<class T>
    class Vector
    {
    public:
        Vector(const Vector<T>&other) = delete;
        Vector<T>  operator = (const Vector<T>& other) = delete;
        Vector(size_t n);
        Vector();
        ~Vector();
        T* begin() const;
        T* end() const;
        const T* cbegin() const;
        const T* cend() const;
        void push_back(T elem);
        T pop_back();
        T& operator[](size_t index) const;
        T& at(size_t index) const;
        size_t capacity() const;
    private:
        size_t capacity_,size_; 
        T* ptr = nullptr;
    };
}