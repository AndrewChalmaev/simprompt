if ($([Environment]::OSVersion.Platform) -eq "Unix") {
  mkdir $Home/.config/powershell/
  copy Microsoft.PowerShell_profile.ps1 $Home/.config/powershell/Microsoft.PowerShell_profile.ps1
  sudo rm /bin/pwsh
  sudo cp pwsh /bin/pwsh
  sudo chmod +x /bin/pwsh
} else {
  mkdir $Home/Documents/PowerShell/
  copy Microsoft.PowerShell_profile.ps1 $Home/Documents/PowerShell/Microsoft.PowerShell_profile.ps1
  del "c:\Program Files\PowerShell\7\pwsh.bat"
  copy pwsh.bat "c:\Program Files\PowerShell\7\"
}
