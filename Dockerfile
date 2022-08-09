FROM mcr.microsoft.com/dotnet/sdk:6.0

COPY ValueApi/bin/Release/net6.0 /app

ENTRYPOINT ["dotnet", "/app/ValueApi.dll"]

