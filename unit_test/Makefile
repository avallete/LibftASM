SRC=	ut_bzero.c\
  	ut_cat.c\
 	ut_isalnum.c\
	ut_isalpha.c\
	ut_isascii.c\
	ut_isdigit.c\
	ut_islower.c\
	ut_isprint.c\
	ut_isupper.c\
	ut_memalloc.c\
	ut_memcpy.c\
	ut_memset.c\
	ut_putchar.c\
	ut_puts.c\
	ut_strcat.c\
	ut_strclr.c\
	ut_strdup.c\
 	ut_strlen.c\
 	ut_strnew.c\
  	ut_tolower.c\
  	ut_toupper.c\
	test_is.c\
	test_to.c

all:
	make re -C ../
	gcc main.c $(SRC) test.h -I ../includes  -L ../ -lfts -o test\

fclean:
	rm -rf test

re: fclean all

