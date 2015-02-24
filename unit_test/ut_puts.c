#include "test.h"

void	ut_putsfd(void)
{
	int		fd;
	int 	ret1;
	int 	ret2;
	int 	ret3;
	char	*str = "Coco tutu toto";

	NAME_UT("Test ft_putsfd");
	fd = open("sandbox", O_RDWR);
	ret1 = ft_putsfd(1, "Voila un petit test easy");
	ret2 = ft_putsfd(1, str);
	ft_putsfd(1, "Encore un autre test\n");
	ft_putsfd(fd, "Sa a l'air de fonctionner\n");
	ret3 = ft_putsfd(1, NULL);
	if (ret3 != EOF)
		FAIL("Bad EOF return : 1, NULL"), printf("ret = %d ", ret3);
	ret3 = ft_putsfd(-1, NULL);
	if (ret3 != EOF)
		FAIL("Bad eof return : -1, NULL"), printf("ret = %d ", ret3);
	ret3 = ft_putsfd(-1, "test");
	if (ret3 != EOF)
		FAIL("Bad EOF return : -1 'test'"), printf("ret = %d ", ret3);
	if (ret1 < 0 || ret2 < 0)
		FAIL("Bad return (negative value)");
}

void	ut_putserr(void)
{
	int 	ret1;
	int 	ret2;
	int 	ret3;
	char	*str = "Coco tutu toto";

	NAME_UT("Test ft_putserr");
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
	ut_putserr();
	ut_putsfd();
}
