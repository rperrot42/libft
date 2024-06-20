/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rperrot <rperrot@student.42lyon.fr>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/09 19:21:22 by rperrot           #+#    #+#             */
/*   Updated: 2023/11/14 18:00:00 by rperrot          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	int		len_s1_and_s2;
	char	*new_src;
	size_t	i;
	size_t	j;

	if (s1 == NULL || s2 == NULL)
		return (NULL);
	len_s1_and_s2 = ft_strlen(s1) + ft_strlen(s2);
	new_src = malloc(sizeof(char) * (len_s1_and_s2 + 1));
	if (new_src == NULL)
		return (NULL);
	i = -1;
	while (s1[++i])
		new_src[i] = s1[i];
	j = -1;
	while (s2[++j])
		new_src[i + j] = s2[j];
	new_src[i + j] = 0;
	return (new_src);
}
