execut: main.o
		gcc main.o -o execut

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o execut

run: execut
		./execut
