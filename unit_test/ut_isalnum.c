#include "test.h"

void	ut_isalnum(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(isalnum, is);
	check_isnt(isalnum, isnt);
	NAME_UT("Test ft_isalnum");
	test_is(ft_isalnum, is);
	test_isnt(ft_isalnum, isnt);
}
