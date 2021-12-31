#!/bin/bash

echo -e "Installing yay - yay-git.git..."
sudo pacman -S --needed git base-devel
cd
mkdir bin
cd ~/bin
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd

