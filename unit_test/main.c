/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: avallete <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/19 16:52:20 by avallete          #+#    #+#             */
/*   Updated: 2015/02/24 17:06:44 by avallete         ###   ########.fr       */
/*   Updated: 2015/02/24 10:33:27 by avallete         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "test.h"

int main(void)
{
	ut_bzero();
	ut_strcat();
	ut_isalpha();
	ut_isdigit();
	ut_isalnum();
	ut_isascii();
	ut_isprint();
	ut_toupper();
	ut_tolower();
	ut_puts();
	ut_strlen();
	ut_memset();
	ut_memcpy();
	ut_strdup();
	ut_cat();
	NAME_UT("TEST DES FONCTIONS BONUS");
	ut_putserr();
	ut_putsfd();
	ut_putchar();
	ut_memalloc();
	ut_strclr();
	ut_strnew();
	ut_isupper();
	ut_islower();
	return (0);
}
