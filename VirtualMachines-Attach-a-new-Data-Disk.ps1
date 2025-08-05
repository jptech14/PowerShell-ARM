# Attach a New Data Disk
# Edit the Name
Add-AzVMDataDisk -VM $vm -Name "myDataDisk" -CreateOption Empty -DiskSizeInGB 128 -Lun 0
