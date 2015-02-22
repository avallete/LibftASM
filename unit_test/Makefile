SRC=	ut_*.c\
	test_is.c\
	test_to.c

all:
	gcc main.c $(SRC) test.h -I ../includes  -L ../ -lfts -o test
clean:
	rmf test
re: clean all
