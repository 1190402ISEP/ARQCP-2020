
ex04: vec_add_one.o main.o
		gcc vec_add_one.o main.o -o ex04

vec_add_one.o: vec_add_one.s
		gcc -g -Wall -c vec_add_one.s -o vec_add_one.o


main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex04

run: ex04
		./ex04
