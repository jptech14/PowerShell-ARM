# Create a Virtual Machine
$vmConfig = New-AzVMConfig -VMName "MyVM" -VMSize "Standard_DS1_v2" |
  Set-AzVMOperatingSystem -Windows -ComputerName "MyVM" -Credential (Get-Credential) -ProvisionVMAgent -EnableAutoUpdate |
  Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" -Skus "2019-Datacenter" -Version "latest" |
  Add-AzVMNetworkInterface -Id $nic.Id

New-AzVM -ResourceGroupName "MyResourceGroup" -Location "EastUS" -VM $vmConfig
