# Portable hacking environment using docker

Usage:

```shell
docker build -t hack-env .
docker run -ti --volume /path-to-my-project:/src hack-env
```

Quickstart:

```shell
docker run -ti --volume $(pwd):/src gonzih/hack-env
```
