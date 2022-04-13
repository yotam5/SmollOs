

#ifndef STD_STRING_H
#define STD_STRING_H

class String 
{
private:
    char* data;
    unsigned int length;
public:
    explicit String();
    String(char c);
    String(const char* c);
    String(char* c);
    String(const String& s);
    String(String& s);
    ~String();
    unsigned len() const;
    int index(char c) const;
    void upcase(unsigned start, unsigned end);
    void downcase(unsigned start, unsigned end);
    char operator[](unsigned i)const;
    char& operator[](unsigned i);

    String& operator+=(const String&s);

    char* c_str() const;
    friend String operator+ (const String& lhs, const String& rhs);
    friend String operator+ (const String& lhs, char          rhs);
    friend String operator+ (const String& lhs, const char*   rhs);
    friend String operator+ (char          lhs, const String& rhs);
    friend String operator+ (const char*   lhs, const String& rhs);


    friend bool operator== (const String& lhs, const String& rhs);
    friend bool operator== (const String& lhs, char          rhs);
    friend bool operator== (const String& lhs, const char*   rhs);
    friend bool operator== (char          lhs, const String& rhs);
    friend bool operator== (const char*   lhs, const String& rhs);
    
    friend bool operator!= (const String& lhs, const String& rhs);
    friend bool operator!= (const String& lhs, char          rhs);
    friend bool operator!= (const String& lhs, const char*   rhs);
    friend bool operator!= (char          lhs, const String& rhs);
    friend bool operator!= (const char*   lhs, const String& rhs);
};

#endif