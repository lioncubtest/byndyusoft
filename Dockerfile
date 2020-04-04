FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine

LABEL maintainer="lioncubtest" \
    release-date="2020–04–04" \
    description="BaGet.Core.Server 0.3.0-preview2"

WORKDIR /app

ADD https://github.com/loic-sharma/BaGet/releases/download/v0.3.0-preview2/BaGet.zip /app

RUN apk add --no-cache unzip \
  && unzip /app/BaGet.zip -d /app \
  && rm /app/BaGet.zip

ENTRYPOINT ["dotnet", "BaGet.dll"]

EXPOSE 80
