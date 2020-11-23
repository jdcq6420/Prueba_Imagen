#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["Prueba_Imagen/Prueba_Imagen.csproj", "Prueba_Imagen/"]
COPY ["Prueba_Imagen.Servicio/Prueba_Imagen.Servicio.csproj", "Prueba_Imagen.Servicio/"]
COPY ["Prueba_Imagen.Utilidades/Prueba_Imagen.Utilidades.csproj", "Prueba_Imagen.Utilidades/"]
COPY ["Prueba_Imagen.DTO/Prueba_Imagen.DTO.csproj", "Prueba_Imagen.DTO/"]
RUN dotnet restore "Prueba_Imagen/Prueba_Imagen.csproj"
COPY . .
RUN dotnet build "Prueba_Imagen.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Prueba_Imagen.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Prueba_Imagen.dll"]