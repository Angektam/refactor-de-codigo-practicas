# Configuración de Servidor y Cliente DHCP en Windows y Ubuntu

Este proyecto contiene scripts para instalar y configurar servidores y clientes DHCP en Windows y Ubuntu.

## 📌 Archivos Incluidos

📂 **server/**
- `windows_dhcp_server.ps1`: Instala y configura un servidor DHCP en Windows.
- `ubuntu_dhcp_server.sh`: Instala y configura un servidor DHCP en Ubuntu.
- `dhcp_server_messages.txt`: Mensajes del servidor DHCP.

📂 **client/**
- `windows_dhcp_client.ps1`: Configura un cliente DHCP en Windows.
- `ubuntu_dhcp_client.sh`: Configura un cliente DHCP en Ubuntu.
- `dhcp_client_messages.txt`: Mensajes del cliente DHCP.

## 🛠️ Instalación y Uso

### **🔹 Servidor DHCP en Ubuntu**
1. Ejecutar `chmod +x ubuntu_dhcp_server.sh`
2. Ejecutar `sudo ./ubuntu_dhcp_server.sh`

### **🔹 Servidor DHCP en Windows**
1. Abrir PowerShell como administrador.
2. Ejecutar `windows_dhcp_server.ps1`

### **🔹 Cliente DHCP en Ubuntu**
1. Ejecutar `chmod +x ubuntu_dhcp_client.sh`
2. Ejecutar `sudo ./ubuntu_dhcp_client.sh`

### **🔹 Cliente DHCP en Windows**
1. Abrir PowerShell como administrador.
2. Ejecutar `windows_dhcp_client.ps1`

## ℹ️ Notas
- En Ubuntu, asegúrese de que la interfaz de red esté correcta en los scripts (`eth0` o `enp0s3`).
- En Windows, asegúrese de ejecutar PowerShell como administrador.
