#include <set>

class MySet {
public:
  std::set<int> record;
  void set(int key);
  bool get(int key);
};