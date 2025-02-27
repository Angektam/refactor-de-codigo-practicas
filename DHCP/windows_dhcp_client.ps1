# Script para configurar un cliente DHCP en Windows

Write-Host "Configurando interfaz de red en modo DHCP..."

$adapter = Get-NetAdapter | Where-Object { $_.Status -eq "Up" }
Set-NetIPInterface -InterfaceIndex $adapter.ifIndex -Dhcp Enabled

Write-Host "Renovando la dirección IP..."
ipconfig /renew

Write-Host "Configuración completada. Consulte dhcp_client_messages.txt"
