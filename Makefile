# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: pguillie <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/26 15:21:11 by pguillie          #+#    #+#              #
#    Updated: 2017/01/31 15:45:50 by pguillie         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a
CC			= gcc
FLAGS		= -Wall -Werror -Wextra
INCLUDES	= -I./includes
SOURCES		= \
			  check.c\
			  ft_bin.c\
			  ft_char.c\
			  ft_color.c\
			  ft_conversion.c\
			  ft_create_list.c\
			  ft_disp.c\
			  ft_fill_list.c\
			  ft_hexa.c\
			  ft_nblen_base.c\
			  ft_notype.c\
			  ft_ntoa_base.c\
			  ft_octal.c\
			  ft_percent.c\
			  ft_printf.c\
			  ft_ptr.c\
			  ft_sigint.c\
			  ft_strdup.c\
			  ft_string.c\
			  ft_strlen.c\
			  ft_strlower.c\
			  ft_strnew.c\
			  ft_strupper.c\
			  ft_unblen_base.c\
			  ft_unsint.c\
			  ft_untoa_base.c\
			  ft_wstruct.c\

OBJECTS		= $(SOURCES:.c=.o)

BAR		= \033[42m
GREEN	= \033[32;01m
BLUE	= \033[34;01m
WHITE	= \033[37;01m
EOC		= \033[0m

all : $(NAME)

$(NAME) :
	@ echo "$(BLUE)\n\t---  BUILD  ---\n$(EOC)"
	@ echo "$(WHITE)\t\tCreate objects :\t$(EOC)\c"
	@ $(CC) $(FLAGS) $(INCLUDES) -c $(SOURCES)
	@ echo "$(GREEN)[OK]$(EOC)\n"
	@ echo "$(WHITE)\t\tCompile library :\t$(EOC)\c"
	@ ar rc $(NAME) $(OBJECTS)
	@ echo "$(GREEN)[OK]$(EOC)\n"
	@ echo "$(WHITE)\t\tRanlib :\t\t$(EOC)\c"
	@ ranlib $(NAME)
	@ echo "$(GREEN)[OK]$(EOC)\n"
	@ echo "$(GREEN)\tLIBFTPRINTF SUCCESSFULLY CREATED !$(EOC)\n"

clean :
	@ echo "$(BLUE)\n\t---  CLEAN  ---\n$(EOC)"
	@ echo "$(WHITE)\t\tRemove objects :\t$(EOC)\c"
	@ rm -rf $(OBJECTS)
	@ echo "$(GREEN)[OK]$(EOC)\n"

fclean : clean
	@ echo "$(WHITE)\t\tRemove library :\t$(EOC)\c"
	@ rm -rf $(NAME)
	@ echo "$(GREEN)[OK]$(EOC)\n"

re : fclean all
