/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ut_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: avallete <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/20 17:20:58 by avallete          #+#    #+#             */
/*   Updated: 2015/02/23 17:42:29 by avallete         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

void	test_it(char *str1, char *str2)
{
	if (!(strcmp(str1, str2)))
		OK;
	else
		FAIL(str1);
}

void	ut_strcat(void)
{
	char str1[30];

	NAME_UT("Test ft_strcat");
	ft_bzero(str1, 30);
	TEST("ft_strcat(str1, '')"), ft_strcat(str1, "");
	test_it(str1, "");
	TEST("ft_strcat(str1, 'B')"), ft_strcat(str1, "B");
	test_it(str1, "B");
	TEST("ft_strcat(str1, 'onj')"), ft_strcat(str1, "onj");
	test_it(str1, "Bonj");
	TEST("ft_strcat(str1, 'Our')"), ft_strcat(str1, "Our");
	test_it(str1, "BonjOur");
	TEST("ft_strcat return ptr");
	test_it(ft_strcat(str1, ""), "BonjOur");
	TEST("ft_strcat(NULL, 'Our')"), ft_strcat(NULL, "Our");
		OK;
	TEST("ft_strcat(NULL, NULL)"), ft_strcat(NULL, NULL);
		OK;
	TEST("ft_strcat(str1, 'aaaaaaaaaaaaaaaaaaaaaaa')"), ft_strcat(str1, "aaaaaaaaaaaaaaaaaaaaaaa");
	test_it(str1, "BonjOuraaaaaaaaaaaaaaaaaaaaaaa");
}
