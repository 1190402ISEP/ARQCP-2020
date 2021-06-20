# A simple Makefile

ex: calcule_saldo.o calculo_operadora.o main.o
		gcc calcule_saldo.o calculo_operadora.o main.o -o ex
		
calcule_saldo.o: calcule_saldo.s
		gcc -g -Wall -c calcule_saldo.s -o calcule_saldo.o

calculo_operadora.o: calculo_operadora.c
		gcc -g -Wall -c calculo_operadora.c -o calculo_operadora.c
		
main.o: main.c
		gcc -g -Wall -c main.c -o main.o
		
clean:
		rm -f *.o ex
		
run: ex
		./ex
