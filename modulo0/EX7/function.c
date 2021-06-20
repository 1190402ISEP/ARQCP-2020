#include <stdio.h>
#include <limits.h>
#include <float.h>

int contapalavras(char *a)
{
    int i, n;

    n = 0;

    if (a[0] == ' ')
        n--;

    for (i = 0; a[i] != '\0'; i++)
    {

        if (a[i] == ' ' && a[i + 1] != ' ')
            n++;
    }

    if (n < 0)
    {
        return 0;
    }
    else
    {
        return n;
    }
}
