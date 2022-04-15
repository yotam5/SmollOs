
#include "./vector.h"
#include "./memop.h"
#include <cstddef>
namespace std
{
    template <class T>
    Vector<T>::Vector(size_t n) :
    capacity_(n),
    size_(n),
    ptr{static_cast<T*>(malloc(sizeof(T)*capacity_))}
    {}

    template <class T>
    T* Vector<T>:: begin() const
    {
        return ptr;
    }

    template <class T>
    T* Vector<T>:: end() const
    {
        return ptr + size_;
    }
    
    template <class T>
    void Vector<T>::push_back(T elem)
    {
        this->ptr[this->size_++] = elem;
    }

    template <class T>
    T Vector<T>::pop_back()
    {
        return this->ptr[--this->size_];
    }   
    template <class T>
    Vector<T>::~Vector()
    {
       delete this->ptr;
    }

}