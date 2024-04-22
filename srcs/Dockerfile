FROM ubuntu:latest

# install app dependencies
RUN apt-get update && apt-get install -y build-essential

# install app
COPY ./srcs/ /opt/
WORKDIR /opt/

# final configuration
ENTRYPOINT ["/opt/setup.sh"]
