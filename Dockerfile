FROM mcr.microsoft.com/azure-functions/node:3.0

ENV AzureWebJobsStorage=ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=myown133;AccountKey=bOe3AFGOJEOAm/9cl6wUNX0NUrsFXaRmtONCuvhFnKZCDtDRK2fIrT/+hzZWb2g08I+BVW/I3uU5YeBtk7Cn0A==;BlobEndpoint=https://myown133.blob.core.windows.net/;QueueEndpoint=https://myown133.queue.core.windows.net/;TableEndpoint=https://myown133.table.core.windows.net/;FileEndpoint=https://myown133.file.core.windows.net/;
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
