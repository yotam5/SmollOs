#include "./memop.h"
#include "./string.h"
#include "../../memory/memory.h"

#define STRING_DEBUG 0

String::String(const int initial)
{
    if(initial >= 0){
        this->length = 0;
        this->data = new char[initial];
        this->available = initial;
    }
    else{
        print("NEGATIVE VALUE\n");
        this->length = 0;
        this->data = new char[0];
        this->available = 0;
    }
}

String::String(const unsigned initial)
{
    this->length = 0;
    data = new char[this->length];
    this->available = initial;
}

String::String()
{
    #if STRING_DEBUG
    print("String()\n");
    #endif
    this->length = 0;
    data = new char[0];
    this->available = 0;
}

String::String(char c)
{
    #if STRING_DEBUG
    print("String(char)\n");
    #endif
    this->length = 1;
    data = new char(c);
    this->available = 0;
}

String::String(const char* c)
{
    #if STRING_DEBUG
    print("String(const char*)\n");
    #endif
    if(c)
    {
        unsigned n = 0;
        while(c[n] != '\0'){
            ++n;
        }
        this->length = n;
        this->data = new char[this->length];
        for(unsigned i = 0;i < this->length;i++){
            this->data[i] = c[i];
        }
        this->available = 0;
    }
    else{
        this->length = 0;
        this->data = 0;
        this->available = 0;
    }
}

String::String(char* c)
{
    #if STRING_DEBUG
    print("String(char*)\n");
    #endif
    if(c)
    {
        unsigned n = 0;
        while(c[n] != '\0'){
            ++n;
        }
        this->length = n;
        this->data = new char[this->length];
        for(unsigned i = 0;i < this->length;i++){
            this->data[i] = c[i];
        }
        this->available = 0;
    }
    else{
        this->length = 0;
        this->data = 0;
    }
    this->available = 0;
}

String::String(const String& s)
{
    #if STRING_DEBUG
    print("String(const Sring&)\n");
    #endif
    this->length = s.length;
    this->data = new char[this->length];
    for(unsigned i = 0;i < this->length;i++){
        this->data[i] = s[i];
    }
    this->available = s.available;
}

String::String(String& s)
{
    #if STRING_DEBUG
    print("String(String&)\n");
    #endif
    this->length = s.length;
    this->data = new char[this->length];
    for(unsigned i = 0;i < this->length;i++){
        this->data[i] = s[i];
    }
    this->available = s.available;
}

String::~String()
{
    #if STRING_DEBUG
    print("~String()\n");
    #endif
    delete[] this->data;
}

unsigned String::len() const
{
    return this->length;
}

unsigned String::getAvailable() const
{
    return this->available;
}


int String::index(char c) const 
{
    for(unsigned i = 0;i < this->length;i++){
        if(this->data[i] == c){
            return i;
        }
    }
    return -1;
}

void String::upcase(unsigned int start, unsigned int end)
{
    char holder;
    if((start >= end) || (end <= start)){
        return;
    }
    for(unsigned j= start;j < end;j++)
    {
        holder = this->data[j];
        if(holder >= 'a' && holder <= 'z')
        {
            this->data[j]-=('a' - 'A');
        }
    }
}

void String::downcase(unsigned int start, unsigned int end)
{
    char holder;
    if((start >= end) || (end <= start)){
        return;
    }
    for(unsigned j= start;j < end;j++)
    {
        holder = this->data[j];
        if(holder >= 'A' && holder <= 'Z')
        {
            this->data[j]+=('a' - 'A');
        }
    }
}

char String::operator[](unsigned int i) const
{
    if(i < this->length){
        return this->data[i];
    }
    return -1;
}

char& String::operator[](unsigned i)
{
    if(i < this->length){
        return this->data[i];
    }
    return this->data[0];   
}

String& String::operator+=(const char c)
{
    if(this->available > 0)
    {
        --this->available;
        this->data[this->length++] = c;
    }
    return *this;
}

String& String::operator+=(const String &s)
{
    char* combined = new char[this->length + s.length];
    for(unsigned i = 0;i < this->length;i++)
    {
        combined[i] = this->data[i];
    }
    for(unsigned i = 0;i < s.length;i++)
    {
        combined[i + this->length] = s[i];
    }
    delete[] this->data;
    this->data=combined;
    this->length = this->length + s.length;
    return *this;
}


String operator+(const String&lhs,char rhs)
{
    return String(lhs) + String(rhs);
}

String operator+(const String&lhs,const char* rhs)
{
    return String(lhs) += String(rhs);
}

String operator+(char lhs, const String& rhs)
{
    return String(lhs) += rhs;
}

String operator+(const char* rhs,const String&lhs)
{
    return String(lhs) += rhs;
}


String operator+ (const String& lhs, const String& rhs) 
{
    return String(lhs) += rhs;
}

bool operator==(const String&lhs,const String& rhs)
{
    if(lhs.len() != rhs.len())return false;
    unsigned cap = lhs.len();
    unsigned n = 0;
    while((n < cap)&&(lhs[n] == rhs[n])){++n;}
    return n == cap;
}

bool operator==(const String& lhs, const char* rhs)
{
    return (lhs == String(rhs));
}

bool operator==(char lhs,const String& rhs)
{
    return (String(lhs) == rhs);
}

bool operator==(const char* lhs,const String& rhs)
{
    return String(lhs) == rhs;
}

bool operator==(const String& lhs, char rhs)
{
    return (lhs == String(rhs));
}

bool operator!=(const String& lhs,char rhs)
{
    return !(lhs == rhs);
}

bool operator!=(const String&lhs,String rhs)
{
    return !(lhs == rhs);
}

bool operator!=(const String&lhs,const char* rhs)
{
    return !(lhs == rhs);
}

bool operator!=(char *lhs, const String& rhs)
{
    return !(lhs == rhs);
}

bool operator!=(char lhs,const String& rhs)
{
    return !(lhs == rhs);
}

bool operator!=(const char*lhs,const String&rhs)
{
    return !(lhs == rhs);
}

void String::erase(unsigned pos,unsigned count)
{
    #if STRING_DEBUG
    print("erase called\n");
    #endif
    if(pos + count >= this->length)
    {
        return;
    }
    int offset = pos + count;
    for(unsigned i = pos ;i < count;i++)
    {
        this->data[i] = this->data[offset];
        this->data[offset] =' ';
        ++offset;
    }
    char* resPtr = new char(this->length - count);
    this->length -= count;
    memcpy((void*)resPtr,this->data,this->length);
    delete[] this->data;
    #if STRING_DEBUG
    print("data was deleted\n");
    #endif
    this->data = resPtr;
}

char* String::c_str() const
{
    char* ptr = new char[this->length+1];
    for(unsigned i = 0;i < this->length;i++){
        ptr[i] = this->data[i];
    }
    ptr[this->length] = '\0';
    return ptr;
}