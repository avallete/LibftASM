#include "test.h"

void	ut_memset(void)
{
	char ft[100] = {0};
	char me[100] = {0};
	char *pt1;
	char *pt2;

	NAME_UT("Test ft_memset :");
	TEST("ft_memset(str, 'C', 50)");
	pt1 = memset(me, 'C', 50);
	pt2 = ft_memset(ft, 'C', 50);
	if (strcmp(me, ft) == 0)
		OK;
	else
		FAIL(ft);
	TEST("Check returns ptr");
	if (strcmp(pt1, pt2) == 0)
		OK;
	else
		FAIL(pt2);
}
