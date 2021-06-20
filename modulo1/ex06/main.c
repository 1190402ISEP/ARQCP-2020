#include <stdio.h>
#include <limits.h>
#include <float.h>
#include "power_ref.h"

int main()
{
    int n = -3;
    int expoente=3;

    int *pointer = &n;

    power_ref(pointer,expoente);
return 0;
}
