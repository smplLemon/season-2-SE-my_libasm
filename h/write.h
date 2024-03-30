#ifndef MY_LIBASM_H_WRITE_H_
#define MY_LIBASM_H_WRITE_H_

#include <stdint.h>
#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

// Return value:
// SUCCESS: non negative (0 =< ...)
// FAILTURE: -1
extern int my_write(int, const void*, size_t);

#endif