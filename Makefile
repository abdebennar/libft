# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abennar <abennar@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/11/16 14:44:16 by abennar           #+#    #+#              #
#    Updated: 2023/11/28 14:14:21 by abennar          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCES = \
	ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c \
	ft_strlen.c ft_memset.c ft_bzero.c ft_memcpy.c  ft_memmove.c \
	ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c \
	ft_strrchr.c ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c \
	ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c \
	ft_itoa.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
	ft_putendl_fd.c ft_putnbr_fd.c 
BSOURCES = \
	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c \
	ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

MOBG = $(SOURCES:.c=.o)
BOBG = $(BSOURCES:.c=.o)

CC = cc
FLAGC = -Wall -Wextra -Werror


all: $(NAME) 

bonus: $(BOBG) 
	ar rc $(NAME) $?
	
$(NAME): $(MOBG)
	ar rc $@ $?

%.o: %.c libft.h
	$(CC) $(FLAGC) -o $@ -c $<

clean:
	rm -f $(MOBG) $(BOBG)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY : clean
