#!/bin/bash
echo -e "Installing awesome-git and sddm..."
yay -S awesome-git
sudo pacman -Sy sddm
sudo systemctl enable sddm.service
systemctl status sddm.service
