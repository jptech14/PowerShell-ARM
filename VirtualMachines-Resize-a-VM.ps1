# Resize a Virtual Machine
# Edit the ResourceGroupName and Size
Update-AzVM -ResourceGroupName "myRG" -VM $vm -Size "Standard_DS2_v2"
