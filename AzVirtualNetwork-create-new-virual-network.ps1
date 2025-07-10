# Create a Virtual Network and Subnet
$subnet = New-AzVirtualNetworkSubnetConfig -Name "MySubnet" -AddressPrefix "10.0.0.0/24"
$vnet = New-AzVirtualNetwork -Name "MyVNet" -ResourceGroupName "MyResourceGroup" `
  -Location "EastUS" -AddressPrefix "10.0.0.0/16" -Subnet $subnet
