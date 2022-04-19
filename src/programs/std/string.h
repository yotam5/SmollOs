

#ifndef STD_string_H
#define STD_string_H

namespace std {

class string {
private:
  char *data;
  unsigned int length;
  unsigned int capacity;

public:
  string();
  string(const char *c);
  string(char *c);
  string(const string &s);
  string(string &s);
  string(const unsigned initial);
  string(const int);
  ~string();
  explicit string(char c);
  void clear();
  unsigned len() const;
  unsigned getAvailable() const;
  unsigned int  find(char c) const;
  int index(char c) const;
  void upcase(unsigned start, unsigned end);
  void downcase(unsigned start, unsigned end);
  void erase(unsigned pos, unsigned amount);
  char operator[](unsigned i) const;
  char &operator[](unsigned i);
  string &operator+=(const string &s);
  string &operator+=(const char c);
  char *c_str() const;
  friend std::string operator+(const std::string &lhs, const std::string &rhs);
  friend std::string operator+(const std::string &lhs, char rhs);
  friend std::string operator+(const std::string &lhs, const char *rhs);
  friend std::string operator+(char lhs, const std::string &rhs);
  friend std::string operator+(const char *lhs, const std::string &rhs);

  friend bool operator==(const std::string &lhs, const std::string &rhs);
  friend bool operator==(const std::string &lhs, char rhs);
  friend bool operator==(const std::string &lhs, const char *rhs);
  friend bool operator==(char lhs, const std::string &rhs);
  friend bool operator==(const char *lhs, const std::string &rhs);

  friend bool operator!=(const std::string &lhs, const std::string &rhs);
  friend bool operator!=(const std::string &lhs, char rhs);
  friend bool operator!=(const std::string &lhs, const char *rhs);
  friend bool operator!=(char lhs, const std::string &rhs);
  friend bool operator!=(const char *lhs, const std::string &rhs);
};
} // namespace std
#endif
