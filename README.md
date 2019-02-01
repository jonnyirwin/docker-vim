# docker-vim #

This is a repository used to generate docker images to run vim in a container with langauge sdk's etc. already installed.

To build images:

```
docker build -t jonnyirwin/vim:vanilla ./vanilla
```

To run container:

```
docker run --rm -it -v "/home/jonny/git/builder/:/mnt/src" jonnyirwin/vim:vanilla
```
