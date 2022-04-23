#include "./mutex.h"
#include "stddef.h"

namespace mutex
{
    Mutex::Mutex(char* name):_name(name),_lock(0)
    {
    }
    Mutex::~Mutex(){}
    void Mutex::lock()
    {
    while (__sync_lock_test_and_set(&(mutex::Mutex::_lock),1)) {}     
    }
    void Mutex::unlock()
    {
        this->_lock = 0;
    }
}

