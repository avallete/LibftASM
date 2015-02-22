#include "test.h"


void	ut_islower(void)
{
	char is[256] = {0};
	char isnt[256] = {0};

	check_is(islower, is);
	check_isnt(islower, isnt);
	NAME_UT("Test ft_islower");
	test_is(ft_islower, is);
	test_isnt(ft_islower, isnt);
}
