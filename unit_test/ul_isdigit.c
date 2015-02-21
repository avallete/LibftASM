#include "test.h"


void	ut_isdigit(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(isdigit, is);
	check_isnt(isdigit, isnt);
	NAME_UT("Test ft_isdigit");
	test_is(ft_isdigit, is);
	test_is(ft_isdigit, isnt);
}
