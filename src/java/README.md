# Java Spring Hello Docker App

Hello world Java Spring app that is containerised.

Following this guide: https://spring.io/guides/gs/spring-boot-docker/#scratch

To build the Java Spring App with Docker:

```docker
docker run -it --rm --name my-maven-project -v "$(pwd)":/usr/src/mymaven -w /usr/src/mymaven maven:3.3-jdk-8 mvn clean install
```

To run locally:

```bash
java -jar target/gs-spring-boot-docker-0.1.0.jar
```

Will be now serving on localhost:8080.

## Building the container

```bash
docker build -t matthewdavis111/hello-java-spring .
```

### Running the container

```docker
docker run -it --rm --name java-spring -p 8080:8080 matthewdavis111/hello-java-spring
```
