#!/bin/bash

# Directories to create in $HOME
# TODO - maybe add them to user-dirs.dirs in ~/.config
HOMEDIRECTORYS=(
  'audiobooks'
  'bin'
  'containers'
  'desktop'
  'documents'
  'downloads'
  'music'
  'pictures'
  'public'
  'scripts'
  'templates'
  'videos'
  'vms'
  'development'
)

echo -e "Installing xdg-user-dirs"
sudo -Sy pacman -Sy xdg-user-dirs

# Create directories in $HOME
for directory in "${HOMEDIRECTORYS[*]}"
do
  mkdir $HOME/$directory
  if [ $? = 0 ]
  then
    echo -e "${green}OK${NC}: creating base $directory"
  else
        echo -e "${red}Fail${NC}: creating $directory"
  fi
done

# Remove capital directories in $HOME
rm -r $HOME/Desktop $HOME/Documents  $HOME/Downloads $HOME/Music $HOME/Pictures $HOME/Public $HOME/Templates $HOME/Videos

# Update ~ structure to lower case
xdg-user-dirs-update

    if [ $? = 0 ]
    then
        echo -e "${green}OK${NC}: Updated xdg-user-dirs"
    else
        echo -e "${red}Fail${NC}: xdg-user-dirs updating"
    fi
