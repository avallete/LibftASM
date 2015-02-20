# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: avallete <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/18 13:18:20 by avallete          #+#    #+#              #
#    Updated: 2015/02/20 18:13:14 by avallete         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_PATH:=./src/
SRC_NAME:=	ft_bzero.s\
			ft_strcat.s
OBJ_PATH =./obj/
OBJ_NAME=$(SRC_NAME:.s=.o)
INC_PATH=./includes/
INC_NAME=libftasm.h
SRC=$(addprefix $(SRC_PATH), $(SRC_NAME))
OBJ=$(addprefix $(OBJ_PATH), $(OBJ_NAME))
INCF=$(addprefix $(INC_PATH), $(INC_NAME))
INC=$(addprefix -I, $(INC_PATH))
CC=~/.brew/bin/nasm
OSNAME=`uname`
NFLAGS=
LNKFLAGS=

ifeq (`uname`, Linux)
	NFLAGS=-f elf64 -p inc/syscall_linux.s
else
	NFLAGS=-f macho64 --prefix _
	LNKFLAGS= -macosx_version_min 10.8 -lSystem
endif
SRC_TEST=./test.c
NAME=libfts.a
RED=\033[30;41m
GREEN=\033[32m
CYAN=\033[36m
ORANGE=\033[33m
NC=\033[0m

all: $(NAME)

$(NAME):$(OBJ)
	@echo "${CYAN}Link all $(NAME)${NC}";
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "${GREEN}$(NAME) created${NC}";

$(OBJ_PATH)%.o:$(SRC_PATH)%.s
	@mkdir -p $(OBJ_PATH)
	@echo "${ORANGE}Create bynary $(NAME) : $@ with $<${NC}";
	@$(CC) $(NFLAGS) $< -o $@

clean:
	@echo "${RED} Delete OBJ files ${NC}"
	@rm -rf $(OBJ_PATH)

fclean: clean
	@echo "${RED} Delete $(NAME) file ${NC}"
	@rm -rf $(NAME)

re: fclean all clean

.PHONY: all clean fclean re
