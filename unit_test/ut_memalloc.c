#include "test.h"

void	ut_memalloc(void)
{
	int *tab;
	char *s;

	NAME_UT("Test ft_memalloc");
	s = NULL;
	tab = NULL;
	s = ft_memalloc(20);
	tab = ft_memalloc(20);
	s[0] = 't';
	s[1] = 'e';
	s[2] = 's';
	s[3] = 't';
	s[4] = '\0';
	if (!(strcmp(s, "test")) && s)
		OK;
	else
		FAIL("test 1");
	tab[0] = 20;
	tab[1] = 47;
	tab[20] = 42;
	if (tab && *tab == 20 && tab[1] == 47 && tab[20] == 42)
		OK;
	else
		FAIL("test 2");
	s = ft_memalloc(0);
	if (!s)
		OK;
	else
		FAIL("size 0");

}
