#include "test.h"

void	ut_cat(void)
{
	int fd2;

	NAME_UT("Test ft_cat");
	fd2 = open("test.h", O_RDONLY);
	ft_cat(fd2);
	ft_cat(-1);
}
