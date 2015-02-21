SRC=	ut_bzero.c\
 	ut_strcat.c

all:
	gcc main.c $(SRC) test.h -I ../includes  -L ../ -lfts -o test
clean:
	rmf test
re: clean all
