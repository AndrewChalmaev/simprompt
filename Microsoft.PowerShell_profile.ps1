# Simple coloured unix-like pwsh prompt v.0.92 (c)2025 andr.ch@gmail.com
#
# PowerShell should be run with -NoLogo parameter
# Linux: remove original link /bin/pwsh, create the script /bin/pwsh containing:
#   #!/bin/sh
#   /opt/microsoft/powershell/7/pwsh -NoLogo $@
# and make it executable:
#   sudo chmod +x /bin/pwsh

# Windows: to use pwsh in the SSH session, create batch file
# c:\Program Files\PowerShell\7\pwsh.bat containing:
#   @echo off
#   "c:\Program Files\PowerShell\7\pwsh.exe" -NoLogo
# and add the following registry parameter (REG_SZ):
#   HKEY_LOCAL_MACHINE\SOFTWARE\OpenSSH\DefaultShell=c:\Program Files\PowerShell\7\pwsh.bat
#
# 0. Aliases
function up { sudo get-WindowsUpdate -AcceptAll -Install -IgnoreReboot }

# 1. Greeting at the start of session
$D=$(Get-Date)
$S="$(pwsh --version)"

if ($([Environment]::OSVersion.Platform) -eq "Unix") {
  $C="Green"
  $O="$(uname -sr)"
  $M="$(free --mega | tail -n 2 | head -n 1 | awk '{print $7}')" + "M"
} else {
  $C="Cyan"
  $O="$(cmd /c ver)".Trim().Replace("[Version ","").Replace("]","")
  $M="$((Get-CimInstance Win32_OperatingSystem).FreePhysicalMemory / 1024)".Split('.')[0] + "M"
}
write-host "$D  " -ForegroundColor White -NoNewline
write-host "$O  " -ForegroundColor $C -NoNewline
write-host "$S  " -ForegroundColor Gray -NoNewline
write-host "$M" -ForegroundColor White

# 2. Prompt
function Global:prompt {
  if ($([Environment]::OSVersion.Platform) -eq "Unix") {
    $U=$Env:USER
    if ($U -eq "root") { $C="Red" }
    $N=$Env:HOSTNAME
    if ($N -eq $Null) { $N=$(hostname) }
    $H=$Env:HOME
  } else {
    $U=$Env:USERNAME
    if (($U -eq "Administrator") -Or ($U -eq "Администратор")) { $C="Magenta" }
    $N=$Env:COMPUTERNAME
    $H=$Env:HOMEDRIVE+$Env:HOMEPATH
  }
  write-host "$U" -ForegroundColor $C -NoNewline
  write-host "@$N " -ForegroundColor White -NoNewline
  write-host "$PWD".Replace($H,"~") -ForegroundColor Green -NoNewline
  write-host ">" -ForegroundColor White -NoNewline
  return " "
}
# Chocolatey profile
#
#$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
#if (Test-Path($ChocolateyProfile)) { Import-Module "$ChocolateyProfile" }
