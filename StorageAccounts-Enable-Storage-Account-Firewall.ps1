# Enable Storage Account Firewall
# Edit the Resource Group name and Storage account name
Update-AzStorageAccountNetworkRuleSet -ResourceGroupName "myRG" -Name "mystorageacct" -DefaultAction Deny
