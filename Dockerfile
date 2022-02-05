# syntax=docker/dockerfile:1
  FROM mcr.microsoft.com/dotnet/aspnet:5.0
  COPY bin/Release/net5.0/publish/ App/
  WORKDIR /App
  ENTRYPOINT ["dotnet", "AspNetCore.MVC.Dockerizing.Demo.dll"]

# Commands
#	1. Publish the project: 
#		dotnet publish -c release
#	2. Build the docker image: 
#		docker image build --tag asp-net-core-demo .
#	3. Run the container:
#		docker container run --publish 7001:80 --detach asp-net-core-demo
#	4. Check in the browser: localhost:7001