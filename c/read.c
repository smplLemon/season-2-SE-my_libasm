#include "../h/read.h"

// int main()
// {
//     const int BUFFER_SIZE = 1000;
//     char buffer[BUFFER_SIZE];

//     int fd = open("../my_libasm/c/index.c", O_RDONLY);
//     if (fd == -1)
//     {
//         printf("Failed to open the file");
//         return 1;
//     }

//     int bytes = my_read(fd, buffer, BUFFER_SIZE);

//     if (bytes == -1)
//     {
//         printf("Failed to read from the file");
//         close(fd);
//         return 1;
//     }

//     close(fd);

//     write(1, buffer, bytes);
//     return 0;
// }

// int main() {
//     char buffer[500];
//     ssize_t bytes;

//     printf("Enter the text: ");
//     fflush(stdout);

//     bytes = my_read(0, buffer, sizeof(buffer));

//     printf("Message read: ");
//     fflush(stdout);
//     write(1, buffer, bytes);

//     return 0;
// }