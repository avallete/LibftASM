#include "test.h"

void	ut_cat(void)
{
	int fd;
	int fd2;
	int fd3;

	NAME_UT("Test ft_cat");
	fd2 = open("sandbox", O_RDONLY);
	fd = open("./catfiles/test1", O_RDONLY);
	fd3 = open("./catfiles/test", O_RDONLY);
	TEST("Easy 'sandbox' : \n");
	ft_cat(fd2);
	TEST("\nHardie 'test1'\n");
	ft_cat(fd);
	TEST("\nHard 'test'\n");
	ft_cat(fd3);
}
