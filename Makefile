
NAME = libasm.a
SRC = ft_strdup.s ft_strcpy.s ft_strlen.s ft_strcmp.s ft_write.s ft_read.s
OBJ = $(SRC:%.s=%.o)
HEADER = libasm.h
CC = gcc
NA = nasm
NFLAGS = -f macho64
CFLAGS = -Wall -Wextra -Werror
MAIN = main.c

all: $(NAME)
	
$(NAME): $(OBJ) $(HEADER)
	ar -rcs $(NAME) $(OBJ)

%.o: %.s 
	$(NA) $(NFLAGS) -s $< -o $@

test: $(MAIN) $(NAME) $(HEADER)
	gcc $(CFLAGS) $(MAIN) $(NAME) -o test

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)
	rm -rf test

re: fclean all
