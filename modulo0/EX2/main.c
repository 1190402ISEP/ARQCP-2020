#include <stdio.h>
#include <limits.h>
#include <float.h>
int sum (int,int);

int main(){
    printf("\n Exercise2:\n");
int a,b;


	int resultado=0;
	while(resultado<10){
		scanf("%d %d", &a,&b);
		resultado=sum(a,b);
		printf("%d",resultado);
		printf("\n");
		
	}
return 0;
}

int sum(int a , int b){
return a+b;
}
