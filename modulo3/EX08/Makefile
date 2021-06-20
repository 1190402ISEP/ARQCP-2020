
ex08: test_even.o sum_even.o main.o
		gcc test_even.o sum_even.o main.o -o ex08

test_even.o: test_even.s
		gcc -g -Wall -c test_even.s -o test_even.o
		
sum_even.o: sum_even.s
		gcc -g -Wall -c sum_even.s -o sum_even.o

main.o: main.c
		gcc -g -Wall -c main.c -o main.o

clean:
		rm -f *.o ex08

run: ex08
		./ex08
