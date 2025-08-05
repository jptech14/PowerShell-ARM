# Run a Script Inside a VM Using Run Command
# Edit the ResourceGroupName, VMName and CommandId
Invoke-AzVMRunCommand -ResourceGroupName "myRG" -VMName "myVM" -CommandId 'RunPowerShellScript' -ScriptPath 'C:\Scripts\myScript.ps1'
