#include "test.h"


void	ut_isalpha(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(isalpha, is);
	check_isnt(isalpha, isnt);
	NAME_UT("Test ft_isalpha");
	test_is(ft_isalpha, is);
	test_is(ft_isalpha, isnt);
}
