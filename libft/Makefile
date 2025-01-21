#The list of source files
C_SOURCE=ft_isalpha.c ft_isdigit.c ft_isalnum.c \
ft_isascii.c ft_isprint.c ft_strlen.c \
ft_memset.c ft_bzero.c ft_memcpy.c \
ft_memmove.c ft_strlcpy.c ft_strlcat.c \
ft_toupper.c ft_tolower.c ft_strchr.c \
ft_strrchr.c ft_strncmp.c ft_memchr.c \
ft_memcmp.c ft_strnstr.c ft_atoi.c \
ft_calloc.c ft_strdup.c ft_substr.c \
ft_strjoin.c ft_strtrim.c ft_split.c \
ft_itoa.c ft_strmapi.c ft_striteri.c \
ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
ft_putnbr_fd.c 

#The list of bonus source files
C_BONUS=ft_lstnew.c \
ft_lstadd_front.c \
ft_lstsize.c \
ft_lstlast.c \
ft_lstadd_back.c \
ft_lstdelone.c \
ft_lstclear.c \
ft_lstiter.c \
ft_lstmap.c \


#The list of object files
#replaces the ending .c to .o the same as doing $(C_SOURCE%=%.c) 
#- keeps the stem and ignores the extension ".c" then adds the extension ".o"
C_OBJ=${C_SOURCE:.c=.o}

#BONUS objects (same as above but for a different list)
BONUS_OBJ=${C_BONUS:.c=.o}

#Compiler used
CC=cc

#Used flags when compiling
CFLAGS=-Wall \
-Wextra \
-Werror

#The library name
LIBNAME=libft.a

#Archiving options man ar : https://linux.die.net/man/1/ar
#r - Insert the files member... into archive (with replacement)
#c - Create the archive if it does not already exist.
#s - Write an index to the archive.
LIBC=ar rcs

all: ${LIBNAME}

${NAME}: ${LIBNAME}

${LIBNAME}: ${C_OBJ}
	${LIBC} ${LIBNAME} ${C_OBJ}

#Reads The target with extension .o will have a prerequisite with the same stem (%=name) and ".c" as extension
#The rule applied will be cc -c target (.o file) prerequisite (.c file) -Wall  -Wextra -Werror (from CCFLAGS)
.c: .o
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}
#.o: .c
#	$(CC) $(CFLAGS) -c -o $@ $^

	
bonus: ${LIBNAME} ${BONUS_OBJ}
	${LIBC} ${LIBNAME} ${BONUS_OBJ}
	@touch bonus


clean:
	rm -f ${C_OBJ} ${BONUS_OBJ} bonus

fclean: clean
		rm -f ${LIBNAME}

re: fclean all

.PHONY: all, clean, fclean, re, 