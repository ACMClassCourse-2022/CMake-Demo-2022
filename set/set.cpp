#include "set.h"

void MySet::set(int key) { record.insert(key); }

bool MySet::get(int key) { return record.count(key); }