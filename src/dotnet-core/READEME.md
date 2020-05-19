# Building the app

Taken from the tutorial: https://dotnet.microsoft.com/learn/aspnet/hello-world-tutorial/

``` docker pull mcr.microsoft.com/dotnet/core/sdk:3.1 ```

## build

``` docker run -it --rm -p 5001:5000 -v $(pwd):/tmp mcr.microsoft.com/dotnet/core/sdk:3.1 
dotnet new webApp -o myWebApp --no-https
```

## Update binding

update launchSettings.json to listen and all interfaces 0.0.0.0

## run in container and expose on 50001 of local machine

``` docker run -it --rm -p 5001:5000 -v $(pwd):/tmp mcr.microsoft.com/dotnet/core/sdk:3.1
cd /tmp/myWebApp
dotnet run
```

## Build container

``` docker build -t matthewdavis111/hello-dotnet-core-app . ```

## Run container

``` docker run -d -p 8080:80 --name hello-dotnet matthewdavis111/hello-dotnet-core-app ```
