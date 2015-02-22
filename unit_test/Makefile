SRC=	ut_bzero.c\
	test_is.c\
 	ut_strcat.c\
	ut_isdigit.c\
	ut_isalpha.c

all:
	gcc main.c $(SRC) test.h -I ../includes  -L ../ -lfts -o test
clean:
	rmf test
re: clean all
