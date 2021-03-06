# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gfoote <gfoote@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/02 15:52:43 by gfoote            #+#    #+#              #
#    Updated: 2019/04/11 12:07:55 by gfoote           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SRCS = 	./ft_memset.c \
		./ft_bzero.c \
		./ft_memcpy.c \
		./ft_memccpy.c \
		./ft_memmove.c \
		./ft_memchr.c \
		./ft_memcmp.c \
		./ft_memalloc.c \
		./ft_memdel.c \
		./ft_strdup.c \
		./ft_strclr.c \
		./ft_strndup.c \
		./ft_strnew.c \
		./ft_strlen.c \
		./ft_strcpy.c \
		./ft_strncpy.c \
		./ft_strcat.c \
		./ft_strncat.c \
		./ft_strlcat.c \
		./ft_strchr.c \
		./ft_strrchr.c \
		./ft_strstr.c \
		./ft_strnstr.c \
		./ft_strcmp.c \
		./ft_strncmp.c \
		./ft_striter.c \
		./ft_striteri.c \
		./ft_strequ.c \
		./ft_strnequ.c \
		./ft_atoi.c \
		./ft_isalpha.c \
		./ft_isdigit.c \
		./ft_isalnum.c \
		./ft_isascii.c \
		./ft_isprint.c \
		./ft_toupper.c \
		./ft_tolower.c \
		./ft_putchar.c \
		./ft_putstr.c \
		./ft_putnbr.c \
		./ft_putchar_fd.c \
		./ft_putstr_fd.c \
		./ft_putnbr_fd.c \
		./ft_putendl.c \
		./ft_putendl_fd.c \
		./ft_strmap.c \
		./ft_strmapi.c \
		./ft_strsub.c \
		./ft_strjoin.c \
		./ft_strtrim.c \
		./ft_strsplit.c \
		./ft_lstadd.c \
		./ft_lstiter.c \
		./ft_lstdel.c \
		./ft_lstdelone.c \
		./ft_lstnew.c \
		./ft_strdel.c \
		./ft_itoa.c \
		./ft_lstmap.c \
		./ft_swap.c \
		./ft_sort_wordtab.c \
		./ft_range.c \
		./ft_count_if.c
BINS = $(SRCS:.c=.o)
INCLUDES = libft.h
FLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	gcc $(FLAGS) -I $(INCLUDES) -c $(SRCS)
	ar -rc $(NAME) *.o
%o.: %.c
	gcc $(FLAGS) -I $(INCLUDES) -c $(SRCS) 
	ar -rc $(NAME) *.o
	
clean:
	rm -f $(BINS)

fclean: clean
	rm -f $(NAME)

re: fclean all