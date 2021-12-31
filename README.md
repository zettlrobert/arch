# My Arch Setup

## Install Arch using the Anarchy Installer
Advanced Install
Settings:
- Kernel - Arch-Linux-Base-Devel
- Shell - Z-Shell
- Grub
- multilib repos for pacman
- enable dhcp on boot
- enable wireless utilities
- os-prober
- no desktop
- additional user with root privileges

## Check for System Updates
	sudo pacman -Syu

## Reboot into the new System
- Install core packages and openssh from `core-packages.sh`

## Install AUR helper yay
- Install yay with `install-yay.sh`

## Install awesomewm-git and SDDM
- Install awesome-git and Display Manager SDDM with
`install-awesome-git-sddm.sh`

## Install NerdFontsComplete
	yay -S nerd-fonts-complete

## Install Oh My Zsh
- `install-oh-my-zsh.sh`






-----------------------------------------------------
## Setup Home Directories
- Setup Home Directories with `home-directories.sh`

## Resolution
- libxrandr
- yay arandr

## Additional Kernels
	sudo pacman -S linux-lts linux-lts-headers

## Microcode
Processor manufacturers release stability and security updates to the processor microcode.
These updates provide bug fixes that can be critical to the stability of your system.
Without them, you may experience spurious crashes or unexpected system halts that can be difficult to track down.
It is recommended to install it after Arch install just for the sake of stability.

Intel:
````
 sudo pacman -S intel-ucode
 sudo grub-mkconfig -o /boot/grub/grub.cfg
````

AMD:
````
sudo pacman -S linux-firmware
sudo grub-mkconfig -o /boot/grub/grub.cfg
````


## Install Codes and Plugins
TODO: Double check the codes
	sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins

	sudo pacman -S exfat-utils fuse-exfat a52dec faac faad2 flac jasper lame libdca libdv gst-libav libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore gstreamer0.10-plugins flashplugin libdvdcss libdvdread libdvdnav gecko-mediaplayer dvd+rw-tools dvdauthor dvgrab

