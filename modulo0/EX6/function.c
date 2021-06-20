#include <stdio.h>
#include <limits.h>
#include <float.h>

int transformar(char *a)
{
    int c, positivo, offset, n;

    if (a[0] == '-')
    {
        positivo = -1;
    }

    if (positivo == -1)
    {
        offset = 1;
    }
    else
    {
        offset = 0;
    }

    n = 0;

    for (c = offset; a[c] != '\0'; c++)
    {
        n = n * 10 + a[c] - '0';
    }

    if (positivo == -1)
    {
        n = -n;
    }

    return n;
}
