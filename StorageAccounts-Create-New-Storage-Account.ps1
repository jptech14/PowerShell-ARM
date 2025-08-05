# Create a new Azure Storage Account
# Edit the Name, Location, Sku Name and Kind
New-AzStorageAccount -ResourceGroupName "myRG" -Name "mystorageacct" -Location "EastUS" -SkuName "Standard_LRS" -Kind "StorageV2"
