#!/bin/bash
# Introduction to the setup script
echo """"""""""""""""""""""""
echo -e "Setup neovim...\n"
echo """"""""""""""""""""""""

# Installing Dependencies
echo -e "installing dependecies, base-devel cmake unzip ninja tree-sitter curl"
sudo pacman -Sy base-devel cmake unzip ninja tree-sitter curl

# Cloning and buiding neovim
cd ~
sudo rm -r neovim
git clone https://github.com/neovim/neovim
cd neovim
sudo make CMAKE_BUILD_TYPE=Release install
cd ~
sudo rm -r neovim
git clone https://github.com/zettlrobert/zr-nvim.git ~/.config/nvim

