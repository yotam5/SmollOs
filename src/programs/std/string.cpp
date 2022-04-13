#include "./memop.h"
#include "./string.h"


String::String()
{
    this->length = 0;
    data = new char[0];
}

String::String(char c)
{
    this->length = 1;
    data = new char(c);
}

String::String(const char* c)
{
    print("const char* c\n");
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
    }
    else{
        this->length = 0;
        this->data = 0;
    }
}

String::String(char* c)
{
    print("char* c\n");
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
    }
    else{
        this->length = 0;
        this->data = 0;
    }
}

String::String(const String& s)
{
    this->length = s.length;
    this->data = new char[this->length];
    for(unsigned i = 0;i < this->length;i++){
        this->data[i] = s[i];
    }
}

String::String(String& s)
{
    this->length = s.length;
    this->data = new char[this->length];
    for(unsigned i = 0;i < this->length;i++){
        this->data[i] = s[i];
    }
}

String::~String()
{
    print("destructor str\n");
    delete[] this->data;
}

unsigned String::len() const
{
    return this->length;
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
    //return String(lhs) + String(rhs);
    return lhs;
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

char* String::c_str() const
{
    char* ptr = new char[this->length+1];
    for(unsigned i = 0;i < this->length;i++){
        ptr[i] = this->data[i];
    }
    ptr[this->length] = '\0';
    print(ptr);
    return ptr;
}