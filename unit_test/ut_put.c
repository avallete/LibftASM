#include "test.h"

void	ut_put(void)
{
	int ret;

	ret = ft_puts("voila un test facile");
	OK;
	if (ret < 0)
		FAIL("puts return error in bad case");
	ft_puts("Un autre un peu moins\n");
	OK;
	ft_puts("Encore un autre \t\n");
	OK;
	ret = ft_puts(NULL);
	OK;
	if (ret != EOF)
		FAIL("puts no return EOF");
	OK;
	ft_puts("voila un test facile");
	OK;
}
