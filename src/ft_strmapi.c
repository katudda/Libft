/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kchristi <kchristi@student.42sp.org.br>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/27 15:05:34 by kchristi          #+#    #+#             */
/*   Updated: 2021/06/04 23:47:17 by kchristi         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char 	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	char			*str;
	unsigned int	i;

	if (!s || !f)
		return (NULL);
	str = malloc(sizeof(char) * (ft_strlen(s) + 1));
	if (!str)
		return (0);
	i = 0;
	while (*s)
		*str++ = f(i++, *s++);
	*str = '\0';
	return (str - i);
}
