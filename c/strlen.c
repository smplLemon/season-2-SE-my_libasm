#include "../h/strlen.h"

int main()
{
    const char* str = "Code architecture! :-)";
    int length = my_strlen(str);

    printf("Length: %d\n", length);

    return 0;
}