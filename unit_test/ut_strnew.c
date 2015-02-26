#include "test.h"

void	ut_strnew(void)
{
	char *str;
	char *test;

	NAME_UT("Test ft_strnew");
	str  = NULL;
	str = ft_strnew(30);
	if (str)
		OK;
	else
		FAIL("str is null");
	ft_strcat(str, "un pti test");
	if (!strcmp(str, "un pti test"))
		OK;
	else
		FAIL("str is not proper");
	test = ft_strnew(0);
	if (test == NULL)
		OK;
	else
		FAIL("size == 0");
}
