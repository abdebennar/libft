/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: abennar <abennar@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 23:50:48 by abennar           #+#    #+#             */
/*   Updated: 2023/11/16 21:17:02 by abennar          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	check_the_set(char c, const char *set)
{
	int		i;

	i = 0;
	while (set[i] != '\0')
	{
		if (set[i] == c)
			return (1);
		i++;
	}
	return (0);
}

char	*ft_strtrim(const char *s1, const char *set)
{
	int		start;
	int		end;
	int		trk;
	char	*str;

	start = 0;
	end = 0;
	trk = 0;
	if (!set || !s1)
		return (NULL);
	while (s1[start] && check_the_set(s1[start], set))
		start++;
	end = ft_strlen(s1);
	while (end > start && check_the_set(s1[end - 1], set))
		end--;
	str = (char *)malloc(sizeof(char) * (end - start + 1));
	if (!str)
		return (NULL);
	while (start < end)
	{
		str[trk++] = s1[start++];
	}
	str[trk] = '\0';
	return (str);
}
