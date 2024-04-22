.PHONY: all clean re debug

all:
	docker build -f srcs/Dockerfile -t project .
	docker run -it project

run:
	docker run project

rm:
	docker stop project
	docker rm project

debug:
	docker run -it project bash

clean:
	docker stop $$(docker ps -qa) ||:
	docker rm $$(docker ps -qa) ||:
	docker rmi -f $$(docker images -qa) ||:

re: clean all
