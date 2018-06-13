# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dgalide <dgalide@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/30 17:42:00 by dgalide           #+#    #+#              #
#    Updated: 2018/03/20 16:18:35 by dgalide          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC += ft_cat.s
SRC += ft_bzero.s
SRC += ft_islower.s
SRC += ft_isupper.s
SRC += ft_isalnum.s
SRC += ft_isalpha.s
SRC += ft_isascii.s
SRC += ft_isdigit.s
SRC += ft_isprint.s
SRC += ft_toupper.s
SRC += ft_tolower.s
SRC += ft_memcpy.s
SRC += ft_memset.s
SRC += ft_putchar.s
SRC += ft_puts.s
SRC += ft_strcat.s
SRC += ft_strdup.s
SRC += ft_strlen.s

SRCO = $(SRC:.s=.o)
CC = gcc
CFLAGS = -Wall -Wextra -Werror

CG = \033[92m
CY =  \033[93m
CE = \033[0m
CB = \033[34m

all: $(NAME)

re: fclean all

%.o: %.s
	@echo "\033[K$(CY)[Libft] :$(CE) $(CG)Compiling $<$(CE) \033[1A";
	@nasm -f macho64 $< -o $@ 

$(NAME): $(SRCO)
	@echo "\033[K$(CY)[Libft] :$(CE) $(CG)Compiling Libft(CE) \033[1A";
	@ar rc $@ $^
	@ranlib $@

clean:
	@echo "\033[K$(CY)[Libft] :$(CE) $(CG) Cleaning Libft objects $(CE)\033[1A";
	@rm -rf $(SRCO)

fclean: clean
	@echo "\033[K$(CY)[Libft] :$(CE) $(CG) Cleaning archive ...$(CE)\033[1A";
	@rm -rf $(NAME)

.PHONY: all re clean fclean
