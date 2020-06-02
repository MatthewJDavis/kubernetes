# Go simple webserver

Listens on port 8180 and returns the path requested.

To build the application:

```bash
go build cmd/hello/hello.go
```

## Docker container

To build:

```bash
docker build -t matthewdavis111/hello-go
```

To run:

docker run --name hello-go --rm -p 8180:8180 matthewdavis111/hello-go

Container published on [docker hub]:

[docker hub]: https://hub.docker.com/repository/docker/matthewdavis111/hello-go
