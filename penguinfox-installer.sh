#!/usr/bin/env bash

# penguinFox
# GitHub: p3nguin-kun

CRE=$(tput setaf 1)
CYE=$(tput setaf 3)
CGR=$(tput setaf 2)
CBL=$(tput setaf 4)
BLD=$(tput bold)
CNC=$(tput sgr0)

backup_folder=~/.penguinFox-Backup
date=$(date +%Y%m%d-%H%M%S)

logo() {

	local text="${1:?}"
	printf ' %s [%s%s %s%s %s]%s\n\n' "${CRE}" "${CNC}" "${CYE}" "${text}"
}

# Intro
clear
logo "Welcome!"
printf '%s%sThis script will automatically install penguinFox - my Firefox config to your system %s\n\n' "${BLD}" "${CRE}" "${CNC}"

# Backup config files
logo "Backing-up your config files"
printf "Backup files will be stored in %s%s%s/.penguinFox-Backup%s \n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"

if [ ! -d "$backup_folder" ]; then
	mkdir -p "$backup_folder"
fi

for folder in chrome; do
	if [ -d "$HOME"/.mozilla/firefox/*.default-*/$folder ]; then
		mv "$HOME"/.mozilla/firefox/*.default-*/$folder "$backup_folder"/${folder}_$date
	fi
done

for file in user.js; do
	if [ -e "$HOME"/.mozilla/firefox/*.default-*/$file ]; then
		mv "$HOME"/.mozilla/firefox/*.default-*/$file "$backup_folder"/${file}_$date
	fi
done

# Installing dotfiles
logo "Installing penguinFox..."
cp -R ./* ~/.mozilla/firefox/*.default-*/

logo "Removing unused files..."
rm -rf ~/.mozilla/firefox/*.default-*/.git ~/.mozilla/firefox/*.default-*/.github ~/.mozilla/firefox/*.default-*/penguinfox-installer.sh ~/.mozilla/firefox/*.default-*/README.md

logo "Done!"
printf "Completed penguinFox installation, now open Firefox and enjoy!\n"
