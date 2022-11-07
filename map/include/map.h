#include "int2048.h"
#include <map>

class MyMap {
public:
  std::map<int, int2048> record;
  void set(int key, int2048 value);

  int2048 get(int key);
};