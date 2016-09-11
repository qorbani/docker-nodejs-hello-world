# Docker: qorbani/nodejs-hello-world

Simple Node.JS service that returns "Hello World!".

# How to run it

```bash
docker run -d -p 80:80 -e PORT=80 --name=hello-world qorbani/nodejs-hello-world
docker run -ti --link hello-world:hello-world qorbani/curl curl http://hello-world/
```

# How to build it

```bash
# To build
make clean build

# To Run
make clean run

# To push
make push
```
