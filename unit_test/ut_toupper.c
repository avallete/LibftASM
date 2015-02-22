#include "test.h"

void	ut_toupper(void)
{
	char to[256] = {0};
	char ft[256] = {0};

	check_to(toupper, to);
	check_to(ft_toupper, ft);
	NAME_UT("Test ft_toupper");
	test_to(ft_toupper, ft, to);
}
