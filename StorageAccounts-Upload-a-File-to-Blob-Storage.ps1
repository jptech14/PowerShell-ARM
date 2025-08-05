# Upload a File to Blob Storage
# Edit the Container
Set-AzStorageBlobContent -File "C:\file.txt" -Container "mycontainer" -Blob "file.txt" -Context $ctx
