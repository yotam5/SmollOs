#include "./string.h"
#include "../../memory/memory.h"
#include "./memop.h"

#define string_DEBUG 0
namespace std {
string::string(const int initial) {
  if (initial >= 0) {
    this->length = 0;
    this->data = new char[initial];
    this->available = initial;
  } else {
    print("NEGATIVE VALUE\n");
    this->length = 0;
    this->data = new char[0];
    this->available = 0;
  }
}

string::string(const unsigned initial) {
  this->length = 0;
  data = new char[this->length];
  this->available = initial;
}

string::string() {
#if string_DEBUG
  print("string()\n");
#endif
  this->length = 0;
  data = new char[0];
  this->available = 0;
}

string::string(char c) {
#if string_DEBUG
  print("string(char)\n");
#endif
  this->length = 1;
  data = new char(c);
  this->available = 0;
}

string::string(const char *c) {
#if string_DEBUG
  print("string(const char*)\n");
#endif
  if (c) {
    unsigned n = 0;
    while (c[n] != '\0') {
      ++n;
    }
    this->length = n;
    this->data = new char[this->length];
    for (unsigned i = 0; i < this->length; i++) {
      this->data[i] = c[i];
    }
    this->available = 0;
  } else {
    this->length = 0;
    this->data = 0;
    this->available = 0;
  }
}

string::string(char *c) {
#if string_DEBUG
  print("string(char*)\n");
#endif
  if (c) {
    unsigned n = 0;
    while (c[n] != '\0') {
      ++n;
    }
    this->length = n;
    this->data = new char[this->length];
    for (unsigned i = 0; i < this->length; i++) {
      this->data[i] = c[i];
    }
    this->available = 0;
  } else {
    this->length = 0;
    this->data = 0;
  }
  this->available = 0;
}

string::string(const string &s) {
#if string_DEBUG
  print("string(const Sring&)\n");
#endif
  this->length = s.length;
  this->data = new char[this->length];
  for (unsigned i = 0; i < this->length; i++) {
    this->data[i] = s[i];
  }
  this->available = s.available;
}

string::string(string &s) {
#if string_DEBUG
  print("string(string&)\n");
#endif
  this->length = s.length;
  this->data = new char[this->length];
  for (unsigned i = 0; i < this->length; i++) {
    this->data[i] = s[i];
  }
  this->available = s.available;
}

string::~string() {
#if string_DEBUG
  print("~string()\n");
#endif
  delete[] this->data;
}

unsigned string::len() const { return this->length; }

unsigned string::getAvailable() const { return this->available; }

int string::index(char c) const {
  for (unsigned i = 0; i < this->length; i++) {
    if (this->data[i] == c) {
      return i;
    }
  }
  return -1;
}

void string::upcase(unsigned int start, unsigned int end) {
  char holder;
  if ((start >= end) || (end <= start)) {
    return;
  }
  for (unsigned j = start; j < end; j++) {
    holder = this->data[j];
    if (holder >= 'a' && holder <= 'z') {
      this->data[j] -= ('a' - 'A');
    }
  }
}

void string::downcase(unsigned int start, unsigned int end) {
  char holder;
  if ((start >= end) || (end <= start)) {
    return;
  }
  for (unsigned j = start; j < end; j++) {
    holder = this->data[j];
    if (holder >= 'A' && holder <= 'Z') {
      this->data[j] += ('a' - 'A');
    }
  }
}

char string::operator[](unsigned int i) const {
  if (i < this->length) {
    return this->data[i];
  }
  return -1;
}

char &string::operator[](unsigned i) {
  if (i < this->length) {
    return this->data[i];
  }
  return this->data[0];
}

string &string::operator+=(const char c) {
  if (this->available > 0) {
    --this->available;
    this->data[this->length++] = c;
  }
  return *this;
}

string &string::operator+=(const string &s) {
  char *combined = new char[this->length + s.length];
  for (unsigned i = 0; i < this->length; i++) {
    combined[i] = this->data[i];
  }
  for (unsigned i = 0; i < s.length; i++) {
    combined[i + this->length] = s[i];
  }
  delete[] this->data;
  this->data = combined;
  this->length = this->length + s.length;
  return *this;
}

string operator+(const string &lhs, char rhs) {
  return string(lhs) + string(rhs);
}

string operator+(const string &lhs, const char *rhs) {
  return string(lhs) += string(rhs);
}

string operator+(char lhs, const string &rhs) { return string(lhs) += rhs; }

string operator+(const char *rhs, const string &lhs) {
  return string(lhs) += rhs;
}

string operator+(const string &lhs, const string &rhs) {
  return string(lhs) += rhs;
}

bool operator==(const string &lhs, const string &rhs) {
  if (lhs.len() != rhs.len())
    return false;
  unsigned cap = lhs.len();
  unsigned n = 0;
  while ((n < cap) && (lhs[n] == rhs[n])) {
    ++n;
  }
  return n == cap;
}

bool operator==(const string &lhs, const char *rhs) {
  return (lhs == string(rhs));
}

bool operator==(char lhs, const string &rhs) { return (string(lhs) == rhs); }

bool operator==(const char *lhs, const string &rhs) {
  return string(lhs) == rhs;
}

bool operator==(const string &lhs, char rhs) { return (lhs == string(rhs)); }

bool operator!=(const string &lhs, char rhs) { return !(lhs == rhs); }

bool operator!=(const string &lhs, string rhs) { return !(lhs == rhs); }

bool operator!=(const string &lhs, const char *rhs) { return !(lhs == rhs); }

bool operator!=(char *lhs, const string &rhs) { return !(lhs == rhs); }

bool operator!=(char lhs, const string &rhs) { return !(lhs == rhs); }

bool operator!=(const char *lhs, const string &rhs) { return !(lhs == rhs); }

void string::erase(unsigned pos, unsigned count) {
#if string_DEBUG
  print("erase called\n");
#endif
  if (pos + count >= this->length) {
    return;
  }
  int offset = pos + count;
  for (unsigned i = pos; i < count; i++) {
    this->data[i] = this->data[offset];
    this->data[offset] = ' ';
    ++offset;
  }
  char *resPtr = new char(this->length - count);
  this->length -= count;
  memcpy((void *)resPtr, this->data, this->length);
  delete[] this->data;
#if string_DEBUG
  print("data was deleted\n");
#endif
  this->data = resPtr;
}

char *string::c_str() const {
  char *ptr = new char[this->length + 1];
  for (unsigned i = 0; i < this->length; i++) {
    ptr[i] = this->data[i];
  }
  ptr[this->length] = '\0';
  return ptr;
}
} // namespace std