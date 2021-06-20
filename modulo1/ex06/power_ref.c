#include <stdio.h>
#include <limits.h>
#include <float.h>

void power_ref(int *x, int y){
    int i=0;
    int power=1;
    int value=*x;

        if(y==0){
            *x=1;
        }else if(y>0){
            for(i=0;i<y;i++){
                power= power * value;
            }
			*x = power;
		} else {
			*x=0;
		}

    printf("%d\n",*x);
}
