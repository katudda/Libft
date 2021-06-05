# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kchristi <kchristi@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/06/02 11:43:13 by kchristi          #+#    #+#              #
#    Updated: 2021/06/04 18:00:43 by kchristi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC =	$(PWD)/first_part/ft_atoi.c \
		$(PWD)/first_part/ft_bzero.c \
		$(PWD)/first_part/ft_calloc.c \
		$(PWD)/first_part/ft_isalnum.c \
		$(PWD)/first_part/ft_isalpha.c \
		$(PWD)/first_part/ft_isascii.c \
		$(PWD)/first_part/ft_isdigit.c \
		$(PWD)/first_part/ft_isprint.c \
		$(PWD)/first_part/ft_memccpy.c \
		$(PWD)/first_part/ft_memchr.c \
		$(PWD)/first_part/ft_memcmp.c \
		$(PWD)/first_part/ft_memcpy.c \
		$(PWD)/first_part/ft_memmove.c \
		$(PWD)/first_part/ft_memset.c \
		$(PWD)/first_part/ft_strchr.c \
		$(PWD)/first_part/ft_strdup.c \
		$(PWD)/first_part/ft_strlcat.c \
		$(PWD)/first_part/ft_strlcpy.c \
		$(PWD)/first_part/ft_strlen.c \
		$(PWD)/first_part/ft_strncmp.c \
		$(PWD)/first_part/ft_strnstr.c \
		$(PWD)/first_part/ft_strrchr.c \
		$(PWD)/first_part/ft_tolower.c \
		$(PWD)/first_part/ft_toupper.c \
		$(PWD)/second_part/ft_itoa.c \
		$(PWD)/second_part/ft_putchar_fd.c \
		$(PWD)/second_part/ft_putendl_fd.c \
		$(PWD)/second_part/ft_putnbr_fd.c \
		$(PWD)/second_part/ft_putstr_fd.c \
		$(PWD)/second_part/ft_split.c \
		$(PWD)/second_part/ft_strjoin.c \
		$(PWD)/second_part/ft_strmapi.c \
		$(PWD)/second_part/ft_strtrim.c \
		$(PWD)/second_part/ft_substr.c

SRC_BONUS =	$(PWD)/bonus_part/ft_lstnew.c \
			$(PWD)/bonus_part/ft_lstadd_front.c \
			$(PWD)/bonus_part/ft_lstsize.c \
			$(PWD)/bonus_part/ft_lstlast.c \
			$(PWD)/bonus_part/ft_lstadd_back.c \
			$(PWD)/bonus_part/ft_lstdelone.c \
			$(PWD)/bonus_part/ft_lstclear.c \
			$(PWD)/bonus_part/ft_lstiter.c \
			$(PWD)/bonus_part/ft_lstmap.c

OBJ = $(SRC:.c=.o)

OBJ_BONUS = $(SRC_BONUS:.c=.o)

NAME = libft.a

CC = gcc

RM = rm -f

FLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):	$(OBJ)
	ar rcs $(NAME) $(OBJ)

$(OBJ):		$(SRC)
	$(CC) $(FLAGS) -c $(SRC)

bonus: $(OBJ_BONUS)
	ar rcs $(NAME) $(OBJ_BONUS)

$(OBJ_BONUS): $(SRC_BONUS)
	$(CC) $(FLAGS) -c $(SRC_BONUS)

clean: 
	$(RM) $(OBJ) $(OBJ_BONUS)

fclean:	clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re