FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myown130;AccountKey=8RSU0f+yzW3PooDLy2ULmp0kIpFjZLi9BeVT49hXc4oiajM71YDEFrdqwacAAcBE/m9Vhtr74oyXYNzkFlIHdQ==;BlobEndpoint=https://myown130.blob.core.windows.net/;QueueEndpoint=https://myown130.queue.core.windows.net/;TableEndpoint=https://myown130.table.core.windows.net/;FileEndpoint=https://myown130.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
