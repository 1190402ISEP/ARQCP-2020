ex08: calc.o main.o
		gcc calc.o main.o -o ex08

calc.o: calc.s
		gcc -g -Wall -c calc.s -o calc.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex08

run: ex08
		./ex08