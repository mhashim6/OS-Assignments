/*
should be compiled with: gcc shared_memory_factorial.c -o factorial -lrt
*/

#include <stdio.h>
#include <sys/wait.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/shm.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>

/* the size (in bytes) of shared memory object */
const int SIZE = 4096;

/* name of the shared memory object */
const char *NAME = "FACTORIAL";

int factorial(int n)
{
    if (n == 0)
        return 1;
    return n * factorial(n - 1);
}

int main(void)
{
    int n = 0;
    printf("Enter n: ");
    scanf("%d", &n);
    printf("\n");
    if (n < 0)
    {
        printf("ERROR: you entered a negative number.\n");
        return -1;
    }

    __pid_t pid;

    pid = fork();
    if (pid < 0)
    {
        printf("ERROR: forking child process failed\n");
        return -2;
    }
    else if (pid == 0)
    {
        /* shared memory file descriptor */
        int shm_fd;
        /* pointer to shared memory obect */
        void *ptr;
        /* create the shared memory object */
        shm_fd = shm_open(NAME, O_CREAT | O_RDWR, 0666);
        /* configure the size of the shared memory object */
        ftruncate(shm_fd, SIZE);
        /* memory map the shared memory object */
        ptr = mmap(0, SIZE, PROT_WRITE, MAP_SHARED, shm_fd, 0);
        printf("%d\n", factorial(n));
        sprintf(ptr, "%d", factorial(n));
    }

    else
    {
        wait(NULL);
        /* shared memory file descriptor */
        int shm_fd;
        /* pointer to shared memory obect */
        void *ptr;
        /* open the shared memory object */
        shm_fd = shm_open(NAME, O_RDONLY, 0666);
        /* memory map the shared memory object */
        ptr = mmap(0, SIZE, PROT_READ, MAP_SHARED, shm_fd, 0);
        printf("factorial of %d is: %s\n", n, (char *)ptr);
        shm_unlink(NAME);
    }
    return 0;
}
