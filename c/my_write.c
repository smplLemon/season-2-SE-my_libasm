#include "../h/write.h"

// int main()
// {
//     int fd;

//     fd = open("../.gitignore", O_WRONLY);
//     if (fd == -1)
//     {
//         printf("Error opening file");
//         return 1;
//     }

//     const char* message = "linkers";
//     size_t size = 7;

//     int bytes = my_write(fd, message, size);
//     if (bytes == -1)
//     {
//         printf("Write error");
//         return 1;
//     }

//     printf("Written: %d\n", bytes);

//     close(fd);

//     return 0;
// }