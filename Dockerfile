FROM mcr.microsoft.com/dotnet/aspnet:8.0-alpine
WORKDIR /asp
EXPOSE 8080


FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /sdk
EXPOSE 8081

COPY . .
RUN dotnet restore "WebApp/WebApp.csproj"
