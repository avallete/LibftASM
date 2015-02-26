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
	ut_isdigit();
	ut_isalpha();
	ut_isascii();
	ut_isalnum();
	ut_isprint();
	ut_isupper();
	ut_islower();
	ut_toupper();
	ut_tolower();
	ut_puts();
	ut_strlen();
	ut_memset();
	ut_memcpy();
	ut_strdup();
	ut_strclr();
	ut_cat();
	ut_memalloc();
	return (0);
}
