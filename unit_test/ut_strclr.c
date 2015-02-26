#include "test.h"

void	ut_strclr(void)
{
	char str[] = "voila un jolie test qui pete sa mere";
	int len;
	int i;
	int err;

	i = 0;
	err = 0;
	NAME_UT("Test ft_strclr");
	len = ft_strlen(str);
	ft_strclr(str);
	while (i < len)
	{
		if (str[i] != '\0')
			err == 1;
		i++;
	}
	if (!err)
		OK;
	else
		FAIL("");
}
