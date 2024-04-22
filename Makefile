.PHONY: all clean re debug

all:
	docker build -f srcs/Dockerfile -t project .

run:
	docker run -it project /bin/bash

debug:
	docker ps -a
	@echo "To inspect logs run following: docker logs Container_ID"

clean:
	docker stop $$(docker ps -qa) ||:
	docker rm $$(docker ps -qa) ||:
	docker rmi -f $$(docker images -qa) ||:

re: clean all
