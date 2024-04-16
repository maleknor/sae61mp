#!/bin/bash

server_dir="/home/user/sae61_mp/sae_Firewall/server"
client_dir="/home/user/sae61_mp/sae_Firewall/client"

launch_vagrant() {
    cd "$1"
    echo "Launching Vagrant in directory: $1"
    sleep 1  # Attendez un peu avant de lancer la commande pour que le changement de répertoire prenne effet
    echo "vagrant up"
    vagrant up
}

# Fonction pour ouvrir un nouvel onglet dans le terminal GNOME
open_tab_in_terminal() {
    local working_dir=$1
    local command_to_run=$2
    gnome-terminal --tab --working-directory="$working_dir" -- bash -c "$command_to_run; exec bash"
}

# Lancer Vagrant dans des onglets de terminal GNOME
open_tab_in_terminal "$server_dir" "vagrant up"
open_tab_in_terminal "$client_dir" "vagrant up"

