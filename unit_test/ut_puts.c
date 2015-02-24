#include "test.h"

void	ut_puts(void)
{
	int 	ret1;
	int 	ret2;
	int 	ret3;
	char	*str = "Coco tutu toto";

	NAME_UT("Test ft_puts");
	ret1 = ft_puts("Voila un petit test easy");
	ret2 = ft_puts(str);
	ft_puts("Encore un autre test\n");
	ft_puts("Sa a l'air de fonctionner\n");
	ret3 = ft_puts(NULL);
	if (ret3 != EOF)
		FAIL("Bad EOF return");
	if (ret1 < 0 || ret2 < 0)
		FAIL("Bad return (negative value)");
}
