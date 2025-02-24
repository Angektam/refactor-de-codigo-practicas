#!/bin/bash

# Importar mensajes
source ./client/ssh_messages.sh

# Instalar OpenSSH Client
echo "$MSG_INSTALL"
sudo apt update && sudo apt install -y openssh-client

# Conectar al servidor Windows
echo "$MSG_CONNECT"
ssh usuario@IP_DEL_SERVIDOR
