
CREAT_VOLUMFOLDERS = /srcs/requirements/tools/setupfolders.sh
RM_VOLUMFOLDERS = /srcs/requirements/tools/remove_folders.sh


all : $(RUN_SCREPT)
	@echo "\033[0;31msetup volumes path, files ...\033[0m"
	@sh ./$(CREAT_VOLUMFOLDERS)
	@echo "\033[0;32mDONE\033[0m"
	@echo "\033[0;31mcreat contaners...\033[0m"
	@docker compose -f srcs/docker-compose.yml up
	@echo "\033[0;32mDONE\033[0m"

clean :
	docker compose -f srcs/docker-compose.yml down -v

fclean : 
	docker compose -f srcs/docker-compose.yml down -v
	docker system prune -af
	sh ./$(RM_VOLUMFOLDERS)


