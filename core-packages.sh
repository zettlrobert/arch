#!/bin/bash

echo -e "Installing core packages..."

# Core Packages to Install
COREPACKAGES=(
  'git',
  'base-devel',
  'kitty',
  'python-pillow'
  'xclip',
  'coreutils',
  'picom',
  'openssh',
  'ssh-keygen',
  'ranger',
  'feh',
  'nvidia-settings',
  'firefox',
  'lua',
  'p7zip',
  'unrar',
  'tar',
  'rsync',
  'unzip',
);

# Echo command result
function execute_command {
  eval "$1"
  
  if [ $? = 0 ]
  then
    echo -e "${green}OK${NC}: "$1" successfully executed"
  else
    echo -e "${red}Fail${NC}: "$1""
  fi
}

for package in "${COREPACKAGES[@]}"
do
  command="sudo pacman -Sy install ${package}"
  execute_command "$command"
done

# Check OpenSSH server
echo -p "Checking OpenSSH status"
CHECK_SSHD_STATUS="sudo systemctl status sshd"
execute_command "$CHECK_SSHD_STATUS"

echo -p "Activating sshd"
ACTIVATE_SSHD="sudo systemctl start sshd"
execute_command "$Activate_SSHD"

echo -p "Starting sshd on startup"
START_SSHD_ON_BOOT="sudo systemctl enable sshd"
execute_command "$START_SSHD_ON_BOOT"
