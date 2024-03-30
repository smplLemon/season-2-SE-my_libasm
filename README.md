# Welcome to My Libasm
***

## Task
    Create library that contains with 9 functions and 2 system calls in NASM 64 - bit

## Description
    This my_libasm library that contains functions and system calls, These functions were 
    implemented in assembly Nasm 64 bit and in this program we used this functions in (.c)
    and i provided the test cases in C programing language.

## Installation
    To run this project user can use Makefile that i provided:
        $>make
    
## Usage
    When you use make command Make file will create folder named "linkers" that contains binary
    of .c and .S files and NOTE that files that contains with (my_) prefix is out file of nasm code 
    others are C code file.
        $>cd linkers
        $>gcc my_strlen strlen
        $>./a.out
        $>cd ..
        $>make clean  


### The Core Team
Akbar Usmonov
Sanjar Ganiyev 

<span><i>Made at <a href='https://qwasar.io'>Qwasar SV -- Software Engineering School</a></i></span>
<span><img alt='Qwasar SV -- Software Engineering School's Logo' src='https://storage.googleapis.com/qwasar-public/qwasar-logo_50x50.png' width='20px'></span>
