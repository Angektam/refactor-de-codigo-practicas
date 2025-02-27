#!/bin/bash

# Script para instalar y configurar el servidor DHCP en Ubuntu

echo "Actualizando paquetes..."
sudo apt update -y

echo "Instalando ISC DHCP Server..."
sudo apt install -y isc-dhcp-server

echo "Configurando la interfaz de red..."
INTERFACE="eth0"  # Cambiar si es necesario
sudo sed -i "s/^INTERFACESv4=.*/INTERFACESv4="$INTERFACE"/" /etc/default/isc-dhcp-server

echo "Creando configuración DHCP en /etc/dhcp/dhcpd.conf..."
cat <<EOL | sudo tee /etc/dhcp/dhcpd.conf > /dev/null
subnet 192.168.1.0 netmask 255.255.255.0 {
    range 192.168.1.50 192.168.1.100;
    option routers 192.168.1.1;
    option domain-name-servers 8.8.8.8, 8.8.4.4;
}
EOL

echo "Reiniciando el servicio DHCP..."
sudo systemctl restart isc-dhcp-server
sudo systemctl enable isc-dhcp-server

echo "Configuración completada. Consulte dhcp_server_messages.txt"
