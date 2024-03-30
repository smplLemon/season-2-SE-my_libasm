#ifndef MY_LIBASM_H_READ_H_
#define MY_LIBASM_H_READ_H_

#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

// Return value:
// SUCCESS: non negative (0 =< ...)
// FAILTURE: -1
extern int my_read(int, void*, size_t);

#endif