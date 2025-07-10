# AzStorageAccountKey cmdlets

   Get-AzStorageAccountKey -ResourceGroupName "MyResourceGroup" -Name "mystorageacct123"
   ```

# Regenerate Storage Account Key
   New-AzStorageAccountKey -ResourceGroupName "MyResourceGroup" -Name "mystorageacct123" -KeyName "key1"
   ```

# Set Shared Access Signature (SAS) Policy
  New-AzStorageContainerStoredAccessPolicy -Container "mycontainer" -Policy "mypolicy" -Permission "rwdl" -StartTime (Get-Date) -ExpiryTime (Get-Date).AddDays(7) -Context $ctx
   ```  

# Enable Storage Analytics Logging
   Set-AzStorageServiceLoggingProperty -ServiceType Blob -LoggingOperations Read,Write,Delete -RetentionDays 7 -Context $ctx
   ```

# Enable Metrics for Storage Account
   Set-AzStorageServiceMetricsProperty -ServiceType Blob -MetricsLevel ServiceAndApi -RetentionDays 7 -Context $ctx
   ```

# Check Storage Usage
   Get-AzStorageUsage
   ```
