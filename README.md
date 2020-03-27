# go-dev-docker

Simple tool for go dev environment in Docker.

Can be found in [Dockerhub](https://hub.docker.com/r/alittleprogramming/go-dev).

## Usage

```bash
$ docker run --rm alittleprogramming/go-dev:1.14.1 gofmt -h
usage: gofmt [flags] [path ...]
...

$ docker run --rm alittleprogramming/go-dev:1.14 goimports -h
usage: goimports [flags] [path ...]
...

$ docker run --rm alittleprogramming/go-dev:1.14 golangci-lint -h
Smart, fast linters runner. Run it in cloud for every GitHub pull request on https://golangci.com

Usage:
  golangci-lint [flags]
  golangci-lint [command]
...
Use "golangci-lint [command] --help" for more information about a command.
```
