#include "map.h"
#include "int2048.h"

void MyMap::set(int key, int2048 value) { record[key] = value; }

int2048 MyMap::get(int key) { return record[key]; }