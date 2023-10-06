#!/bin/bash

# Set the GoldOS variables
GOLDOS_DIR="/goldos"

# Rename Gentoo to GoldOS
sudo mv /etc/gentoo /etc/goldos
sudo mv /var/lib/portage /var/lib/goldos
sudo mv /usr/portage /usr/goldos

# Install XFCE
sudo emerge -av xfce4

# Install flatpak
sudo emerge -av app-misc/flatpak

# Update the system
sudo emerge --update --sync

# Reboot the system
sudo reboot