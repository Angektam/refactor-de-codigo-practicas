# Importar mensajes
. ./server/ssh_messages.ps1

Write-Host $MSG_INSTALL
Add-WindowsCapability -Online -Name OpenSSH.Server

Write-Host $MSG_CONFIGURE
Set-Service -Name sshd -StartupType Automatic
Start-Service sshd

Write-Host $MSG_FIREWALL
New-NetFirewallRule -Name "OpenSSH" -DisplayName "OpenSSH Server" -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22 -ErrorAction SilentlyContinue

Write-Host $MSG_DONE
