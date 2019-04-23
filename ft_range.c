/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_range.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gfoote <gfoote@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/02/06 13:51:00 by gfoote            #+#    #+#             */
/*   Updated: 2019/04/11 12:13:42 by gfoote           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		*ft_range(int min, int max)
{
	int *result;
	int i;

	if (min >= max)
		return (0);
	result = (int*)(malloc((max - min) * sizeof(int)));
	i = 0;
	while (max - min > 0)
	{
		result[i] = min;
		min++;
		i++;
	}
	return (result);
}
