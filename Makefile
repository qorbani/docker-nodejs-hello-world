NAME=hello-world
TAG=qorbani/nodejs-$(NAME)
VER=v1.1

all: clean build run

build:
	docker build -t $(TAG) -t $(TAG):$(VER) .

run:
	docker run -d -p 80:80 -e PORT=80 --name=$(NAME) $(TAG)
	docker run -ti --rm --link $(NAME):$(NAME) qorbani/curl

clean:
	-docker stop $(NAME)
	-docker rm $(NAME)

push:
	docker push $(TAG)
	docker push $(TAG):$(VER)
