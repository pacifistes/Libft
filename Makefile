# *************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bbrunell <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/24 12:08:07 by bbrunell          #+#    #+#              #
#    Updated: 2016/02/09 12:01:16 by bbrunell         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCSPATH = srcs/

SRCS =	ft_strjoin.c\
		ft_strlen.c\
		ft_strnew.c\
		ft_strsub.c\
		ft_atoi.c\
		ft_strcmp.c\
		ft_putstr.c\
		ft_putchar.c\
		ft_putstr_fd.c\
		ft_verifint.c\
		ft_putnbr.c\
		ft_strsplit.c\
		ft_strdel.c\
		get_next_line.c\
		ft_check_end.c \
		ft_memalloc.c\
		ft_strdup.c\
		ft_bzero.c\
		ft_strstr.c\
		ft_putendl.c\
		ft_itoll.c\
		ft_free_join.c\
		ft_free_join_char.c\
		ft_strlen_char.c\
		free_tab_str.c\
		ft_free1_join_char.c\
		ft_free_njoin.c\
		buff_join.c\
		buff_join_nstr.c\
		ft_strncmp.c\
		size_long_long.c\
		print_nchar.c\
		ft_putendl_fd.c\
		buff_sub_join.c\
		buff_join_char.c\
		ft_toupper.c\
		ft_tolower.c\
		ft_strtrim.c\
		ft_strstr.c\
		ft_strsplit.c\
		ft_strrev.c\
		ft_strrchr.c\
		ft_strnstr.c\
		ft_strnequ.c\
		ft_strncat.c\
		ft_strmapi.c\
		ft_strmap.c\
		ft_strlcat.c\
		ft_striteri.c\
		ft_striter.c\
		ft_strequ.c\
		ft_strcpy.c\
		ft_strncpy.c\
		ft_strclr.c\
		ft_strchr.c\
		ft_strcat.c\
		ft_range.c\
		ft_putnbr_fd.c\
		ft_putchar_fd.c\
		ft_print_bits.c\
		ft_memset.c\
		ft_memmove.c\
		ft_memdel.c\
		ft_memcpy.c\
		ft_memcmp.c\
		ft_memchr.c\
		ft_memccpy.c\
		ft_lstnew.c\
		ft_lstmap.c\
		ft_lstiter.c\
		ft_lstdelone.c\
		ft_lstdel.c\
		ft_lstadd.c\
		ft_itoa.c\
		ft_iterative_power.c\
		ft_isprint.c\
		ft_isdigit.c\
		ft_isascii.c\
		ft_isalpha.c\
		ft_isalnum.c\
		ft_is_negative.c\
		buff_free_njoin.c

SRC = $(addprefix $(SRCSPATH), $(SRCS))

WFLAGS = -Wall -Werror -Wextra

CC = gcc -g

OBJ = $(SRC:.c=.o)

all: $(NAME)

%.o: %.c
	$(CC) $(WFLAGS) -c -I ./ $< -o $@

$(NAME): $(OBJ)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)


clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
