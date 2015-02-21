/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: avallete <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/20 17:18:44 by avallete          #+#    #+#             */
/*   Updated: 2015/02/20 18:51:06 by avallete         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEST_H
# define TEST_H
#include "libftasm.h"
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#define CYAN printf("\e[36m")
#define RED printf("\e[0;31m")
#define GREEN printf("\e[32m")
#define ORANG printf("\e[33m")
#define NC printf("\e[0m")
#define OK GREEN, printf("	OK\n"), NC
#define FAIL(x) RED, printf("	FAIL: "), printf("result: %s\n", x), NC
#define FAILIS(x) RED, printf("	FAILIS: "), printf("result: %d\n", x), NC
#define NAME_UT(x) CYAN, printf("\n%s	:\n", x), NC
#define TEST(x)	ORANG, printf("%s	: ", x), NC

/*
** test IS framework
*/

void	check_is(int(*f)(int c), char *str);
void	check_isnt(int(*f)(int c), char *str);
void	test_is(int(*f)(int c), char *str);
void	test_isnt(int(*f)(int c), char *str);

/*
** TEST
*/

void	ut_bzero(void);
void	ut_strcat(void);
void	ut_isalpha(void);
void	ut_isdigit(void);
void	ut_isalnum(void);
void	ut_isascii(void);
void	ut_isaprint(void);
#endif
