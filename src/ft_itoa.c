/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kchristi <kchristi@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/27 14:31:54 by kchristi          #+#    #+#             */
/*   Updated: 2021/06/04 23:47:17 by kchristi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_lendigits(long ln, int sign)
{
	int	c;

	c = 1;
	if (sign == -1)
		c++;
	while (ln >= 10)
	{
		ln = ln / 10;
		c++;
	}
	return (c);
}

char	*ft_itoa(int n)
{
	char	*str;
	int		sign;
	int		len;
	long	ln;

	sign = 1;
	ln = n;
	if (ln < 0)
		sign = -1;
	ln = sign * ln;
	len = ft_lendigits(ln, sign);
	str = malloc((len + 1) * sizeof(char));
	if (!str)
		return (NULL);
	str[len] = '\0';
	while (len > 0)
	{
		if (len == 1 && sign == -1)
			str[0] = '-';
		else
			str[len - 1] = ln % 10 + '0';
		ln = ln / 10;
		len--;
	}
	return (str);
}
