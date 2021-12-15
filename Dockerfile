FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myown127;AccountKey=MKU5H4PVA6CSMMnDm+oGUS+mTxOTTiIL4o4Pnf3HotHATKiIfWZ0AEH1ihqTjUWUoJUcqHJH2KY0UcHO525vEw==;BlobEndpoint=https://myown127.blob.core.windows.net/;QueueEndpoint=https://myown127.queue.core.windows.net/;TableEndpoint=https://myown127.table.core.windows.net/;FileEndpoint=https://myown127.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
