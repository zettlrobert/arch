# AwesomeWM

|Dependency	
|Description	
|Why/Where is it needed?|

awesome
(git master branch)
Window manager

rofi	
Window switcher
application launcher and dmenu replacement	

light	
Gets/Sets screen brightness	
Brightness keybinds

lm_sensors	
CPU temperature sensor	
CPU temperature widgets

acpid	
Daemon for delivering ACPI events	
Charger notifications

FIX: i will use pipewire in place of pulseaudio
pulseaudio	
Sound system (Installed by default on most distros)	
Volume widgets and keybinds

jq
Parses json output
Weather widgets

inotify-tools
Monitors filesystem events	
Brightness widget updates

fortune-mod	
Displays random quotations (fortune cookies)	
Fortune widget

redshift	
Controls screen temperature	
Night mode command

mpd	
Server-side application for playing music	
Music widgets

mpc	
Minimalist command line interface to MPD	
Music widgets

maim	
Takes screenshots (improved scrot)	
Screenshot keybinds

feh	
Image viewer and wallpaper setter	
Screenshot previews, wallpapers

xdotool	
command-line automation tool	
Sending keys to ncmpcpp

openweathermap key	
Provides weather data	
Weather widgets

Install Dependencies

	yay -S rofi lm_sensors acpid jq fortune-mod redshift mpd mpc maim feh light-git pulseaudio inotify-tools xdotool

## Services
mpd - Flexible, powerful, server-side application for playing music (from git)

	systemctl --user enable mpd.service
	systemctl --user start mpd.service

# Charger plug/unplug events
	sudo systemctl enable acpid.service
	sudo systemctl start acpid.service
