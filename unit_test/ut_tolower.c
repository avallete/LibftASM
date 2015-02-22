#include "test.h"

void	ut_tolower(void)
{
	char to[256] = {0};
	char ft[256] = {0};

	check_to(tolower, to);
	check_to(ft_tolower, ft);
	NAME_UT("Test ft_tolower");
	test_to(ft_tolower, ft, to);
}
