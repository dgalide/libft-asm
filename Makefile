# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dgalide <dgalide@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/11/30 17:42:00 by dgalide           #+#    #+#              #
#    Updated: 2018/04/11 12:40:45 by dgalide          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC += ft_putchar.s
SRC += ft_isupper.s
SRC += ft_islower.s

INC = includes/libft.h
SRCO = $(SRC:.s=.o)
CC = nasm
CFLAGS = -f macho64

CG = \033[92m
CY =  \033[93m
CE = \033[0m
CB = \033[34m

all: $(NAME)

re: fclean all

%.o: %.s
	@echo "\033[K$(CY)[Libft] :$(CE) $(CG)Compiling $<$(CE) \033[1A";
	@$(CC) $(CFLAGS) $< -o $@ 

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
