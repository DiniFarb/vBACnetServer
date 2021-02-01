FROM mcr.microsoft.com/dotnet/aspnet:5.0
COPY bin/Release/net5.0/publish App/
COPY ./DeviceDescriptor.xml App/
WORKDIR /App
ENTRYPOINT ["dotnet", "vBACnetServer.dll"]


