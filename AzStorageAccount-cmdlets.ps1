# AzStorageAccount cmdlet to create and manage storage accounts.

# Create a Storage Account
New-AzStorageAccount -ResourceGroupName "MyResourceGroup" -Name "mystorageacct123" -Location "EastUS" -SkuName "Standard_LRS" -Kind "StorageV2"

# List All Storage Accounts
Get-AzStorageAccount

# Get Details of a Specific Storage Account
Get-AzStorageAccount -ResourceGroupName "MyResourceGroup" -Name "mystorageacct123"

# Update Storage Account Settings
Update-AzStorageAccount -ResourceGroupName "MyResourceGroup" -Name "mystorageacct123" -EnableHttpsTrafficOnly $true

# Remove a Storage Account
Remove-AzStorageAccount -ResourceGroupName "MyResourceGroup" -Name "mystorageacct123"

