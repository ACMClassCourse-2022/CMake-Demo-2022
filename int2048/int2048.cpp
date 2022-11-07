//
// Created by Celve on 2021/11/12.
//

#include "int2048.h"
#include <string>

int2048::int2048() { int_value = 0; }
int2048::int2048(long long x) { int_value = x; }

int2048::int2048(const int2048 &b) { int_value = b.int_value; }

int2048 operator+(const int2048 &a, const int2048 &b) {
  return a.int_value + b.int_value;
}
