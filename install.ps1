if ($([Environment]::OSVersion.Platform) -eq "Unix") {
  mkdir $Home/.config/powershell/
  copy Microsoft.PowerShell_profile.ps1 $Home/.config/powershell/Microsoft.PowerShell_profile.ps1  
} else {
  mkdir $Home/Documents/PowerShell/
  copy Microsoft.PowerShell_profile.ps1 $Home/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
}
