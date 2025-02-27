#!/bin/bash

# Script para configurar un cliente DHCP en Ubuntu

echo "Activando DHCP en la interfaz de red..."
INTERFACE="eth0"  # Cambiar si es necesario
sudo dhclient -r $INTERFACE
sudo dhclient $INTERFACE

echo "Configuración completada. Consulte dhcp_client_messages.txt"
