#!/bin/bash

# Répertoires des machines virtuelles Vagrant
server_dir="/home/user/sae61_mp/sae_Firewall/server"
client_dir="/home/user/sae61_mp/sae_Firewall/client"

# Fonction pour détruire une machine virtuelle Vagrant dans un répertoire spécifié
destroy_vm() {
    local directory="$1"
    cd "$directory"
    echo "Destroying Vagrant instance in directory: $directory"
    vagrant destroy -f
}

# Détruire les machines virtuelles Vagrant
destroy_vm "$server_dir"
destroy_vm "$client_dir"
