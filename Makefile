all: build up

build:
	sudo docker-compose -f ./srcs/docker-compose.yml build

up:
	docker-compose -f ./srcs/docker-compose.yml up

down:
	docker-compose -f ./srcs/docker-compose.yml down

clean: down
	docker-compose -f ./srcs/docker-compose.yml down  --volumes
	docker network prune 
	docker volume prune 
	docker system prune 

re: clean all