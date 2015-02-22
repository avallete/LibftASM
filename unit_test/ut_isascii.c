#include "test.h"

void	ut_isascii(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(isascii, is);
	check_isnt(isascii, isnt);
	NAME_UT("Test ft_isascii");
	test_is(ft_isascii, is);
	test_isnt(ft_isascii, isnt);
}
