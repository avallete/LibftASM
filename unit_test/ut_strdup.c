#include "test.h"

void	ut_strdup(void)
{
	char str1[] = "un petit test, hope that work";
	char *str2;

	NAME_UT("Test ft_strdup");
	str2 = NULL;
	str2 = ft_strdup(str1);
	printf("STR1 := %s\n", str1);
	printf("STR2 := %s\n", str2);
	str1[2] = 'o';
	printf("STR1 := %s\n", str1);
	printf("STR2 := %s\n", str2);
}
