NAME = Inception

all: $(NAME)



$(NAME):
	mkdir -p /nfs/homes/slaajour/data/wp-db
	mkdir -p /nfs/homes/slaajour/data/wp-vl
	docker-compose -f ./srcs/docker-compose.yml up --build

down:
		docker-compose -f ./srcs/docker-compose.yml down

restart:
		docker-compose -f ./srcs/docker-compose.yml restart

prune:
		docker system prune -a -f
		docker-compose -f ./srcs/docker-compose.yml down --rmi all --volumes

clean:
	rm -rf /nfs/homes/slaajour/data/wp-db
	rm -rf /nfs/homes/slaajour/data/wp-vl
	rm -rf /nfs/homes/slaajour/data

fclean: prune clean

re: fclean all
