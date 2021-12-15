FROM mcr.microsoft.com/azure-functions/dotnet:3.0.14492-appservice

ENV AzureWebJobsStorage DefaultEndpointsProtocol=https;AccountName=myown128;AccountKey=mTUzG91pRSLOt7QUw/KxVjnsY9FPV0n0Q8prdZrQEJWnTGMBex8JRqkSXQu9mRUe4fzphgt1mzma+/KxIMa2Xw==;BlobEndpoint=https://myown128.blob.core.windows.net/;QueueEndpoint=https://myown128.queue.core.windows.net/;TableEndpoint=https://myown128.table.core.windows.net/;FileEndpoint=https://myown128.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
