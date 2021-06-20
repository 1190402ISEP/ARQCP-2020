ex02: str_copy_porto.o main.o
		gcc str_copy_porto.o main.o -o ex02

str_copy_porto.o: str_copy_porto.s
		gcc -g -Wall -c str_copy_porto.s -o str_copy_porto.o


main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex02

run: ex02
		./ex02
