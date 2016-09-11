NAME=hello-world
TAG=qorbani/nodejs-$(NAME)

all: clean build run

build:
	docker build -t $(TAG) .

run:
	docker run -d -p 80:80 -e PORT=80 --name=$(NAME) $(TAG)
	docker run -ti --link $(NAME):$(NAME) qorbani/curl

clean:
	-docker stop $(NAME)
	-docker rm $(NAME)

push:
	docker push $(TAG)
