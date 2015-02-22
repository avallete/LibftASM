#include "test.h"


void	ut_isprint(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(isprint, is);
	check_isnt(isprint, isnt);
	NAME_UT("Test ft_isprint");
	test_is(ft_isprint, is);
	test_isnt(ft_isprint, isnt);
}
