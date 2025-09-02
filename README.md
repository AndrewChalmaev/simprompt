Simple coloured unix-like pwsh prompt v.0.92 (c)2025 andr.ch@gmail.com

PowerShell should be run with -NoLogo parameter

Linux: remove original link /bin/pwsh, create the script /bin/pwsh containing:

  #!/bin/sh
  
  /opt/microsoft/powershell/7/pwsh -NoLogo $@
  
  
and make it executable:

  sudo chmod +x /bin/pwsh
  

Windows: to use pwsh in the SSH session, create batch file
c:\Program Files\PowerShell\7\pwsh.bat containing:

  @echo off
  
  "c:\Program Files\PowerShell\7\pwsh.exe" -NoLogo

and add the following registry parameter (REG_SZ):

  HKEY_LOCAL_MACHINE\SOFTWARE\OpenSSH\DefaultShell=c:\Program Files\PowerShell\7\pwsh.bat

/functions: fish shell functions (aliases)

config.fish: fish shell greeting string
