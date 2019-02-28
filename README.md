# Dockerized and pre-configured Vim #

Used to generate docker images to run vim in a docker container with language sdk's etc. already installed.  Currently it is configured for javascript development.  It uses a number of vim plugins for linting, autocompletion, auto-formatting, fast file navigation.

To run container:

```
docker run --rm -it -v "$(pwd):/mnt/src" jonnyirwin/vim:latest
```

## Color Schemes ##
This image uses [base16](https://github.com/chriskempson/base16) color schemes.  The default is set to use 'oceanicnext'.  This can be over-riden using environment variables. The below example changes the color scheme to use the "seti" base16 theme.

```
docker run --rm -it -e BASE16_THEME=seti -v "$(pwd):/mnt/src" jonnyirwin/vim:latest
```

## Powerline Fonts ##
If you have powerline fonts installed on your machine they can be applied ([vim-airline](https://github.com/vim-airline/vim-airline) uses these fonts).  To use powerline fonts, add the `POWERLINE_FONTS_ENABLED` environment variable as follows:

```
docker run --rm -it -e POWERLINE_FONTS_ENABLED=true -v "$(pwd):/mnt/src" jonnyirwin/vim:latest
```
