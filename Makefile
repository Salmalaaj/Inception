DC= docker-compose
DC_PATH= ./srcs/docker-compose.yml
wordpress_data= /home/slaajour/data/wordpress
mariadb_data= /home/slaajour/data/mariadb
data= /home/slaajour/data
PINK= \033[38;5;200m
GREEN= \033[38;5;46m
YELLOW= \033[38;5;226m
BLUE= \033[38;5;21m
PURPLE= \033[38;5;129m
RED= \033[38;5;196m
NC= \033[0m

all: build up

build:
	@echo "$(PINK)Building containers...$(NC)"
	@mkdir -p ${wordpress_data}
	@mkdir -p ${mariadb_data}
	@${DC} -f ${DC_PATH} build

up:
	@echo "$(GREEN)Starting containers...$(NC)"
	@${DC} -f ${DC_PATH} up 

down:
	@echo "$(RED)Stopping containers...$(NC)"
	@${DC} -f ${DC_PATH} down

restart:
	@echo "$(YELLOW)Restarting containers...$(NC)"
	@${DC} -f ${DC_PATH} restart

prune:
	@echo "$(PURPLE)Pruning containers...$(NC)"
	@${DC} -f ${DC_PATH} down --rmi all --volumes

clean:
	@echo "$(BLUE)Cleaning containers...$(NC)"
	@sudo rm -rf ${wordpress_data}
	@sudo rm -rf ${mariadb_data}
	@sudo rm -rf ${data}

fclean: prune clean

re: fclean all

.PHONY: all build up down restart prune clean fclean re