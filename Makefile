CFLAGS = -Wall -g
CC     = gcc $(CFLAGS)

all : http-get

http-get : http-get.o
	$(CC) -o $@ $^

http-get.o : http-get.c
	$(CC) -c $<

clean :
	rm -f *.o

realclean : clean
	rm -f http-get
