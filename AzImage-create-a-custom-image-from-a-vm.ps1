# Create a Custom Image from a VM
Stop-AzVM -ResourceGroupName "MyResourceGroup" -Name "MyVM" -Force
$imageConfig = New-AzImageConfig -Location "EastUS"
$imageConfig = Set-AzImageOsDisk -Image $imageConfig -OsType Windows -OsState Generalized -ManagedDiskId $vm.StorageProfile.OsDisk.ManagedDisk.Id
New-AzImage -ImageName "MyCustomImage" -ResourceGroupName "MyResourceGroup" -Image $imageConfig
