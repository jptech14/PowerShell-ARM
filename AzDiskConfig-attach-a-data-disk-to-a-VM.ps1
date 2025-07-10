# Attach a Data Disk to a VM
$vm = Get-AzVM -Name "MyVM" -ResourceGroupName "MyResourceGroup"
$dataDisk = New-AzDiskConfig -AccountType Standard_LRS -Location "EastUS" -CreateOption Empty -DiskSizeGB 128
$disk = New-AzDisk -DiskName "MyDataDisk" -Disk $dataDisk -ResourceGroupName "MyResourceGroup"
Add-AzVMDataDisk -VM $vm -Name "MyDataDisk" -CreateOption Attach -ManagedDiskId $disk.Id -Lun 1
Update-AzVM -VM $vm -ResourceGroupName "MyResourceGroup"
