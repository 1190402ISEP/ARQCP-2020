#include <stdio.h>
#include <limits.h>
#include <float.h>
const int VALOR = 30;

int count(int *a, int n, int value)
{
    int contador = 0;
    int i;
    for (i = 0; i < n; i++)
    {
        if (a[i] == value)
        {
            contador++;
        }
    }

    return contador;
}
