# Create a Network Security Group (NSG) with Rules
# $nsgRule = New-AzNetworkSecurityRuleConfig -Name "AllowRDP" -Protocol "Tcp" `
  -Direction "Inbound" -Priority 1000 -SourceAddressPrefix "*" -SourcePortRange "*" `
  -DestinationAddressPrefix "*" -DestinationPortRange 3389 -Access "Allow"

$nsg = New-AzNetworkSecurityGroup -ResourceGroupName "MyResourceGroup" `
  -Location "EastUS" -Name "MyNSG" -SecurityRules $nsgRule
