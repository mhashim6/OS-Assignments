/*
should be compiled with: gcc -pthread threaded_prime.c -o prime
*/

#include <pthread.h>
#include <unistd.h>
#include <stdio.h>
#include <stdbool.h>

int n = 0;
bool isPrime(int n);

void *runner(void *param);

int main(int argc, char *argv[])
{
    printf("Enter n: ");
    scanf("%d", &n);
    printf("\n");

    pthread_t tid;
    pthread_attr_t attr;
    pthread_attr_init(&attr);
    pthread_create(&tid, &attr, runner, NULL);
    pthread_join(tid, NULL);
}
void *runner(void *param)
{
    for (int i = n; i >= 2; i--)
    {
        if (isPrime(i))
            printf("%d\n", i);
    }

    pthread_exit(0);
}

bool isPrime(int n)
{
    for (int i = 2; i <= n / 2; i++)
        if (n % i == 0)
            return false;
    return true;
}