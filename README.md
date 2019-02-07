# docker-vim #

This is a repository used to generate docker images to run vim in a container with language sdk's etc. already installed.

To build images:

```
docker build -t jonnyirwin/vim:latest .
```

To run container:

```
docker run --rm -it -v "$(pwd):/mnt/src" jonnyirwin/vim:latest
```
