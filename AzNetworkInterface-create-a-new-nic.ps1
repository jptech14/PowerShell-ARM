# Create a Network Interface
$nic = New-AzNetworkInterface -Name "MyNIC" -ResourceGroupName "MyResourceGroup" `
  -Location "EastUS" -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $pip.Id -NetworkSecurityGroupId $nsg.Id
