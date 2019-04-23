/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sort_wordtab.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gfoote <gfoote@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/12 19:42:00 by gfoote            #+#    #+#             */
/*   Updated: 2019/04/11 12:14:47 by gfoote           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_sort_wordtab(char **tab)
{
	int		sorted;
	int		i;
	char	*tmp;

	if (!tab || !*tab)
		return ;
	sorted = 0;
	while (!sorted)
	{
		i = 0;
		sorted = 1;
		while (tab[i + 1])
		{
			if (ft_strcmp(tab[i], tab[i + 1]) > 0)
			{
				sorted = 0;
				tmp = tab[i];
				tab[i] = tab[i + 1];
				tab[i + 1] = tmp;
			}
			i += 1;
		}
	}
}
