
CREAT_VOLUMFOLDERS = /srcs/requirements/tool/setupfolders.sh

RUN_SCREPT = runscrept

all : $(RUN_SCREPT)
	docker compose -f srcs/docker-compose.yml up -d

$(RUN_SCREPT) : 
	sh ./$(CREAT_VOLUMFOLDERS)

clean :
	docker compose -f srcs/docker-compose.yml down -v

fclean :
	docker compose -f srcs/docker-compose.yml down -v
	docker system prune -af


