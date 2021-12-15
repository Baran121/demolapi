FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myownapp126;AccountKey=acgYGJrllec+IsZuqN9IBSvX1gC2ahNKhGEv3YjTHbBQxB4hSSGbMbNAxky/jJW8bVe8MWfwAWv9wKgfgBcVbQ==;BlobEndpoint=https://myownapp126.blob.core.windows.net/;QueueEndpoint=https://myownapp126.queue.core.windows.net/;TableEndpoint=https://myownapp126.table.core.windows.net/;FileEndpoint=https://myownapp126.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
