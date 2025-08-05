# Edit the StorageAccountName
$ctx = New-AzStorageContext -StorageAccountName "mystorageacct" -StorageAccountKey "<key>"
Enable-AzStorageBlobDeleteRetentionPolicy -Context $ctx -RetentionDays 7
