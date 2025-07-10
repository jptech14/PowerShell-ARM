# AzStorageContainer cmdlets

# Create a Blob Container
New-AzStorageContainer -Name "mycontainer" -Context $ctx -Permission Off

# List Blob Containers
   Get-AzStorageContainer -Context $ctx
   ```
# Upload a File to Blob Storage
   Set-AzStorageBlobContent -File "C:\file.txt" -Container "mycontainer" -Blob "file.txt" -Context $ctx
   ```

# Download a Blob
   Get-AzStorageBlobContent -Container "mycontainer" -Blob "file.txt" -Destination "C:\Downloads" -Context $ctx
   ```

# List Blobs in a Container
   Get-AzStorageBlob -Container "mycontainer" -Context $ctx
   ```

# Delete a Blob
 Remove-AzStorageBlob -Container "mycontainer" -Blob "file.txt" -Context $ctx
   ```
