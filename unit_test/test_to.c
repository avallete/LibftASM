#include "test.h"

void	check_to(int(*f)(int c), char *str)
{
	int i;
	int e;

	i = 1;
	e = 0;
	while (i < 256)
	{
		str[e] = f(i);
		e++;
		i++;
	}
}

void	test_to(int(*f)(int c), char *ft, char *to)
{
	int i;
	int ret;
	int foo;

	i = 0;
	ret = 0;
	foo = 0;
	ret = strcmp(ft, to);
	if (ret != 0)
		FAIL(ft), printf("real result = %s\n", to);
	else
		OK;
}
