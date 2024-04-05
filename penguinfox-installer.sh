#!/usr/bin/env bash

# penguinFox
# GitHub: p3nguin-kun

CRE=$(tput setaf 1)
CYE=$(tput setaf 3)
BLD=$(tput bold)
CNC=$(tput sgr0)

backup_folder=~/.penguinFox-Backup
date=$(date +%Y%m%d-%H%M%S)

# Functions
logo() {
	local text="${1:?}"
	printf ' %s [%s%s %s%s %s]%s\n\n' "${CRE}" "${CNC}" "${CYE}" "${text}"
}

intro() {
    logo "Welcome!"
    printf "%s%sThis script will automatically install penguinFox - my Firefox config to your system. Make sure you don't open any Firefox session while install this config.%s\n\n" "${BLD}" "${CRE}" "${CNC}"
    read -rp "Type \"about:support\" in your browser and type your profile directory here: " profile
    printf "\n"
}

kill_firefox(){
    logo "Kill all Firefox session before install"
    pkill -f firefox
    printf "Done!\n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
}

backup(){
    logo "Backing-up your config files"
    printf "Backup files will be stored in %s%s%s/.penguinFox-Backup%s \n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
    if [ ! -d "$backup_folder" ]; then
    	mkdir -p "$backup_folder"
    fi
	if [ -d "$profile"/chrome ]; then
		mv "$profile"/chrome "$backup_folder"/chrome_"$date"
    fi
	if [ -e "$profile"/user.js ]; then
    	mv "$profile"/user.js "$backup_folder"/user.js_"$date"
	fi
}

install(){
    logo "Installing penguinFox..."
    cp -R ./files/* "$profile"/
    printf "Done!\n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
}

done_msg(){
    logo "Done!"
    printf "Completed penguinFox installation, now open Firefox and enjoy!\n"
}

# Main
intro
kill_firefox
backup
install
done_msg
