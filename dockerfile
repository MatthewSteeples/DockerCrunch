FROM mcr.microsoft.com/dotnet/framework/sdk:4.8-windowsservercore-ltsc2019

MAINTAINER matthew@ledgerscope.com
WORKDIR NCrunch

ADD https://s3.amazonaws.com/downloads.ncrunch.net/NCrunch_GridNodeServer_4.9.0.8.zip ncrunch.zip

RUN powershell -command Expand-Archive -Path ncrunch.zip -DestinationPath .

EXPOSE 41141

ENTRYPOINT ["NCrunch Grid Node Server\\NCrunch.GridNode.Console.exe"]