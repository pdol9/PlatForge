FROM ubuntu:22.04

# install app dependencies
RUN apt-get update && apt-get install -y build-essential

# install app
COPY srcs /

# final configuration
CMD ["make"]
