execut: fill_s2.o main.o
		gcc fill_s2.o main.o -o execut

fill_s2.o: fill_s2.s
		gcc -g -Wall -c fill_s2.s -o fill_s2.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o execut

run: execut
		./execut
