
NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
LIBC = ar rcs
LIBFT_DIR =./libft
LIBFT = ${LIBFT_DIR}/libft.a
RM = rm -f
HOME = ./
SRCS = 	ft_utils.c ft_utils2.c ft_utils3.c ft_utils4.c ft_utils5.c ft_utils6.c ft_printf.c \
		ft_c_handler.c ft_d_handler.c ft_s_handler.c ft_u_handler.c ft_p_handler.c ft_x_handler.c
	
OBJS = ${SRCS:.c=.o}

all: ${NAME}

${NAME}: ${LIBFT} ${OBJS}
	cp ${LIBFT} ${NAME}
	${LIBC} ${NAME} ${OBJS}
	
bonus: ${NAME}

${LIBFT}: ${LIBFT_DIR}
	@${MAKE} -C ${LIBFT_DIR}

.c: .o
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
	
clean:
	@${MAKE} clean -C ${LIBFT_DIR}
	rm -f ${OBJS}

fclean:	clean
	@${MAKE} fclean -C ${LIBFT_DIR}
	rm -f ${NAME}

re:	fclean all

.PHONY:		all, clean, fclean, re
