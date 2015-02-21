#include "test.h"

void	check_is(int(*f)(int c), char *str)
{
	int i;
	int e;

	i = 1;
	e = 0;
	while (i < 256)
	{
		f(i) ? (str[e] = i), e++ : 0;
		i++;
	}
}

void	check_isnt(int(*f)(int c), char *str)
{
	int i;
	int e;

	i = 1;
	e = 0;
	while (i < 256)
	{
		f(i) ? 0 : (str[e] = i), e++;
		i++;
	}
}

void	test_is(int(*f)(int c), char *str)
{
	int i;

	i = 0;
	while (str[i])
	{
		f(str[i]) ? OK : FAILIS(str[i]);
		i++;
	}
}

void	test_isnt(int(*f)(int c), char *str)
{
	int i;

	i = 0;
	while (str[i])
	{
		f(str[i]) ? FAILIS(str[i]) : OK;
		i++;
	}
}


