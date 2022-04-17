
#include "./vector.h"
#include "./memop.h"
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
        if(this->capacity_ > this->size_){
            this->ptr[this->size_++] = elem;
        }
        else
        {
            this->capacity_*=2;
            T* newPtr = new T(this->capacity_);
            for(int i = 0;i < this->size_;i++){
                newPtr[i] = this->ptr[i];
            }
            delete[] this->ptr;
            this->ptr = newPtr;
            this->ptr[this->size_++] = elem;
        }
        this->ptr[this->size_++] = elem;
    }

    template<class T>
    bool Vector<T>::empty() const
    {
        return this->size_ == 0;
    }

    template<class T>
    T& Vector<T>::front() const
    {
        return this->ptr[0];
    }

    template <class T>
    T Vector<T>::pop_back()
    {
        ~this->ptr[this->size_];
        return this->ptr[this->size_--];
    }  
    template<class T>
    void Vector<T>::clear()
    {
        delete[] this->ptr;
        this->capacity_ = 0;
        this->size_ = 0;
    }

    template <class T>
    Vector<T>::~Vector()
    {
       delete[] this->ptr;
    }

}