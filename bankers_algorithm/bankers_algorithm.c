/*
compiled against std=gnu89 to support the LC-3 C toolchain.
*/

#include <stdio.h>

#define N 5 /*Number of processes*/
#define M 3 /*Number of resources*/

int main()
{
    int allocs[N][M] =
        {
            {0, 1, 0}, /*P0*/
            {2, 0, 0}, /*P1*/
            {3, 0, 2}, /*P2*/
            {2, 1, 1}, /*P3*/
            {0, 0, 2}  /*P4*/
        };

    int max[N][M] =
        {
            {7, 5, 3}, /*P0*/
            {3, 2, 2}, /*P1*/
            {9, 0, 2}, /*P2*/
            {2, 2, 2}, /*P3*/
            {4, 3, 3}  /*P4*/
        };

    int work[M] = {3, 3, 2} /* initially equals available.*/;

    int need[N][M], finish[N], seq[N];

    int i, j, k, y, seq_ind = 0; /*indicies*/

    for (k = 0; k < N; k++)
        finish[k] = 0;

    /*Need = Max - Allocations*/
    for (i = 0; i < N; i++)
        for (j = 0; j < M; j++)
            need[i][j] = max[i][j] - allocs[i][j];

    for (k = 0; k < N; k++)
    {
        for (i = 0; i < N; i++)
        {
            if (!finish[i])
            {
                int illegal = 0;
                for (j = 0; j < M; j++)
                {
                    if (need[i][j] > work[j])
                    {
                        illegal = 1;
                        break;
                    }
                }

                if (!illegal)
                {
                    seq[seq_ind++] = i;
                    /*Work = Work + Allocations*/
                    for (y = 0; y < M; y++)
                        work[y] += allocs[i][y];
                    finish[i] = 1;
                }
            }
        }
    }

    printf("Safe sequence:\n");
    for (i = 0; i < N - 1; i++)
        printf("P%d -> ", seq[i]);
    printf("P%d\n", seq[N - 1]);

    return (0);
}