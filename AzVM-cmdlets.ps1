# Create an Azure VM with custom settings.
# Change Variables to complete customization.

# Login to Azure
Connect-AzAccount

# Variables
$resourceGroup = "MyResourceGroup"
$location = "EastUS"
$vmName = "MyB4msVM"
$vmSize = "Standard_B4ms"
$adminUsername = "azureuser"
$adminPassword = ConvertTo-SecureString "P@ssw0rd1234!" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ($adminUsername, $adminPassword)

# Create Resource Group
New-AzResourceGroup -Name $resourceGroup -Location $location

# Create Virtual Network
$vnet = New-AzVirtualNetwork -ResourceGroupName $resourceGroup -Location $location `
  -Name "$vmName-VNet" -AddressPrefix "10.0.0.0/16"
Add-AzVirtualNetworkSubnetConfig -Name "default" -AddressPrefix "10.0.0.0/24" -VirtualNetwork $vnet
$vnet | Set-AzVirtualNetwork

# Create Public IP
$publicIP = New-AzPublicIpAddress -Name "$vmName-PIP" -ResourceGroupName $resourceGroup `
  -Location $location -AllocationMethod Dynamic

# Create Network Security Group
$nsg = New-AzNetworkSecurityGroup -ResourceGroupName $resourceGroup -Location $location `
  -Name "$vmName-NSG"

# Create NIC
$subnet = Get-AzVirtualNetworkSubnetConfig -Name "default" -VirtualNetwork $vnet
$nic = New-AzNetworkInterface -Name "$vmName-NIC" -ResourceGroupName $resourceGroup `
  -Location $location -SubnetId $subnet.Id -PublicIpAddressId $publicIP.Id -NetworkSecurityGroupId $nsg.Id

# Define VM Configuration
$vmConfig = New-AzVMConfig -VMName $vmName -VMSize $vmSize |
  Set-AzVMOperatingSystem -Windows -ComputerName $vmName -Credential $cred -ProvisionVMAgent -EnableAutoUpdate |
  Set-AzVMSourceImage -PublisherName "MicrosoftWindowsServer" -Offer "WindowsServer" `
    -Skus "2022-Datacenter" -Version "latest" |
  Add-AzVMNetworkInterface -Id $nic.Id |
  Set-AzVMOSDisk -Name "$vmName-OSDisk" -CreateOption FromImage -ManagedDiskStorageAccountType "Premium_LRS" `
    -DiskSizeInGB 1024

# Create the VM
New-AzVM -ResourceGroupName $resourceGroup -Location $location -VM $vmConfig


