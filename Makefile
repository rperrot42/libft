SRC = ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_strlen.c \
		ft_strncmp.c \
		ft_atoi.c \
		ft_toupper.c \
		ft_tolower.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_bzero.c \
		ft_memset.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_calloc.c \
		ft_memcpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_strnstr.c \
		ft_strchr.c \
		ft_strrchr.c \
		ft_strdup.c \
		ft_substr.c \
		ft_strjoin.c \
		ft_strtrim.c \
		ft_split.c \
		ft_itoa.c \
		ft_strmapi.c \
		ft_striteri.c \
		ft_putchar_fd.c \
		ft_putstr_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c 
		

SRCB = ft_lstnew_bonus.c \
		ft_lstadd_front_bonus.c \
		ft_lstsize_bonus.c \
		ft_lstlast_bonus.c \
		ft_lstadd_back_bonus.c \
		ft_lstdelone_bonus.c \
		ft_lstclear_bonus.c \
		ft_lstiter_bonus.c \
		ft_lstmap_bonus.c

OBJB = $(SRCB:.c=.o) 

NAME = libft.a

GCC = cc

FLAGS = -Werror -Wall -Wextra

OBJ = $(SRC:.c=.o)

DEP = $(SRC:.c=.d)

DEPB = $(SRCB:.c=.d)

DEPS = $(DEP) $(DEPB)

INCLUDE = libft.h

all:$(NAME)

%.o: %.c $(INCLUDE)
	$(GCC) $(FLAGS) -MMD -I/$(INCLUDE) -c $< -o $@

$(NAME):$(OBJ)
	ar rcs $(NAME) $(OBJ)

clean:
	rm -f $(OBJ) $(OBJB) $(DEPS)

fclean:clean
	rm -f $(NAME)

bonus:$(OBJ) $(OBJB)
	ar -rcs $(NAME) $(OBJ) $(OBJB) 

re: fclean all

.PHONY: all re clean fclean bonus

-include $(DEPS)