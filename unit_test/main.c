/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: avallete <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/19 16:52:20 by avallete          #+#    #+#             */
/*   Updated: 2015/02/20 15:22:07 by avallete         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftasm.h"
#include <stdio.h>
#include <string.h>
#define CYAN printf("\e[36m")
#define RED printf("\e[30m")
#define GREEN printf("\e[32m")
#define ORANG printf("\e[33m")
#define NC printf("\e[0m")
#define OK GREEN, printf("OK\n"), NC
#define FAIL(x) RED, printf("FAIL: "), printf("result: %s\n", x), NC
#define NAME_UT(x) CYAN, printf("%s:\n", x), NC
#define TEST(x)	ORANG, printf("%s: ", x), NC



void	ut_bzero()
{
	char test[] = "Voila un jolie test";
	char test2[] = "Voila un jolie test";
	NAME_UT("Test ft_bzero");
	TEST("ft_bzero(str, 5)"), ft_bzero(test, 5);
	if ((!(*test)) && (!(strcmp(test + 5, " un jolie test"))))
		OK;
	else
		FAIL(test);
	TEST("ft_bzero(str, 0)"), ft_bzero(test2, 0);
	if (test2[0] == 'V')
		OK;
	else
		FAIL(test2);
	TEST("ft_bzero(NULL, 5)"), ft_bzero(NULL, 5);
	OK;
}

int main(void)
{
	ut_bzero();
	return (0);
}
