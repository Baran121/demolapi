FROM mcr.microsoft.com/azure-functions/node:3.0

ENV AzureWebJobsStorage=DefaultEndpointsProtocol=https;AccountName=lastoragenew;AccountKey=v/hAIbK2gFZLjo+gOIlGF+TerLSnkOFBm/Yws+4/qa1tPcF7f3uxk33jUlI1ajI3ZKaEEaZpua5xopGLNzmSXQ==;EndpointSuffix=core.windows.net
ENV AZURE_FUNCTIONS_ENVIRONMENT Development
ENV AzureWebJobsScriptRoot=/home/site/wwwroot
ENV AzureFunctionsJobHost__Logging__Console__IsEnabled=true
ENV FUNCTIONS_V2_COMPATIBILITY_MODE=true


COPY . /home/site/wwwroot
