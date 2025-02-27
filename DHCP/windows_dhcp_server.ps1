# Script para instalar y configurar el servidor DHCP en Windows Server

Write-Host "Instalando el rol de DHCP..."
Install-WindowsFeature -Name DHCP -IncludeManagementTools

Write-Host "Autorizando el servidor DHCP..."
$serverName = (Get-Item env:computername).Value
Add-DhcpServerInDC -DnsName $serverName -IPAddress 192.168.1.1

Write-Host "Creando un nuevo ámbito DHCP..."
Add-DhcpServerv4Scope -Name "RedLocal" -StartRange 192.168.1.50 -EndRange 192.168.1.100 -SubnetMask 255.255.255.0 -State Active

Write-Host "Configuración completada. Consulte dhcp_server_messages.txt"
