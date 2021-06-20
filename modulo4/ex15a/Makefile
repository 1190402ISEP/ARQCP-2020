ex15a: greater_date.o main.o
		gcc greater_date.o main.o -o ex15a

greater_date.o: greater_date.c
		gcc -g -Wall -c greater_date.c -o greater_date.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex15a

run: ex15a
		./ex15a