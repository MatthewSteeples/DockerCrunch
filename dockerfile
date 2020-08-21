FROM mcr.microsoft.com/dotnet/framework/sdk

MAINTAINER matthew@ledgerscope.com
WORKDIR NCrunch

ADD http://downloads.ncrunch.net/NCrunch_GridNodeServer_4.4.0.12.zip ncrunch.zip

RUN powershell -command Expand-Archive -Path ncrunch.zip -DestinationPath .

EXPOSE 41141

ENTRYPOINT ["NCrunch Grid Node Server\\NCrunch.GridNode.Console.exe"]