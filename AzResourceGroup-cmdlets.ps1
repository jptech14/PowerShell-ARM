# Create a Resource Group in a specified Region
New-AzResourceGroup -Name "MyResourceGroup" -Location "EastUS"

# List All Resource Groups in your current subscription
Get-AzResourceGroup

# Get details for a specific Resource Group
Get-AzResourceGroup -Name "MyResourceGroup"

# Delete a Resource Group
Remove-AzResourceGroup -Name "MyResourceGroup" -Force

# Tag a Resource Group
Set-AzResourceGroup -Name "MyResourceGroup" -Tag @{Environment="Dev"; Owner="Admin"}

# Export Resource Group Template
Export-AzResourceGroup -ResourceGroupName "MyResourceGroup" -Path "C:\Templates"

# Deploy Resources Using ARM Template
New-AzResourceGroupDeployment -ResourceGroupName "MyResourceGroup" -TemplateFile "template.json"

# Check Resource Group Deployment Status
Get-AzResourceGroupDeployment -ResourceGroupName "MyResourceGroup"

# Move Resources Between Resource Groups
Move-AzResource -DestinationResourceGroupName "NewGroup" -ResourceId "/subscriptions/xxx/resourceGroups/OldGroup/providers/Microsoft.Compute/virtualMachines/MyVM"

# List Resource Groups Across Subscriptions
Get-AzSubscription | ForEach-Object {
    Set-AzContext -SubscriptionId $_.Id
    Get-AzResourceGroup
}
