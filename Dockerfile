FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myown129;AccountKey=VGoka92IxubUc8kMguOCnkydL1MCvpQYYSGvMVSuMKUjqDZFwDWiVPO0aygn/6zu8PY/ACU258MpE+/vqBnGNQ==;BlobEndpoint=https://myown129.blob.core.windows.net/;QueueEndpoint=https://myown129.queue.core.windows.net/;TableEndpoint=https://myown129.table.core.windows.net/;FileEndpoint=https://myown129.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
