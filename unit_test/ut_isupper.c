#include "test.h"


void	ut_isupper(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(isupper, is);
	check_isnt(isupper, isnt);
	NAME_UT("Test ft_isupper");
	test_is(ft_isupper, is);
	test_isnt(ft_isupper, isnt);
}
