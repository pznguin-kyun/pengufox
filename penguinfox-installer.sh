#!/usr/bin/env bash

# penguinFox
# Author: Khanh Hien Hoang (p3nguin-kun)
# Codeberg: p3nguin-kun

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
	echo -en "                                 
  	penguinFox Installer\n\n"
	printf ' %s [%s%s %s%s %s]%s\n\n' "${CRE}" "${CNC}" "${CYE}" "${text}"
}

# Intro
clear
logo "Welcome!"
printf '%s%sThis script will automatically install penguinFox - my Firefox config to your system %s\n\n' "${BLD}" "${CRE}" "${CNC}"

while true; do
	read -rp " Do you want to continue? [y/n]: " yn
	case $yn in
	[Yy]*) break ;;
	[Nn]*) exit ;;
	*) printf "Just write 'y' or 'n'\n\n" ;;
	esac
done
clear

# Backup config files
logo "Backing-up your config files"
printf "Backup files will be stored in %s%s%s/.penguinFox-Backup%s \n\n" "${BLD}" "${CRE}" "$HOME" "${CNC}"
sleep 10

if [ ! -d "$backup_folder" ]; then
	mkdir -p "$backup_folder"
fi

for folder in chrome extensions; do
	if [ -d "$HOME"/.mozilla/firefox/*.default-release/$folder ]; then
		mv "$HOME"/.mozilla/firefox/*.default-release/$folder "$backup_folder"/${folder}_$date
		echo "$folder folder backed up successfully at $backup_folder/${folder}_$date"
	else
		echo "The folder $folder does not exist in $HOME/.mozilla/firefox/"
	fi
done

for file in user.js prefs.js; do
	if [ -e "$HOME"/.mozilla/firefox/*.default-release/$file ]; then
		mv "$HOME"/.mozilla/firefox/*.default-release/$file "$backup_folder"/${file}_$date
		echo "$file file backed up successfully at $backup_folder/${file}_$date"
	else
		echo "The file $file does not exist in $HOME/.mozilla/firefox/"
	fi
done

# Installing dotfiles
logo "Installing penguinFox..."
printf "Copying files to respective directories..\n"

for archivos in ~/penguinFox/*; do
	cp -R "${archivos}" ~/.mozilla/firefox/*.default-release/
	if [ $? -eq 0 ]; then
		printf "%s%s%s folder copied succesfully!%s\n" "${BLD}" "${CGR}" "${archivos}" "${CNC}"
		sleep 1
	else
		printf "%s%s%s failed to been copied, you must copy it manually%s\n" "${BLD}" "${CRE}" "${archivos}" "${CNC}"
		sleep 1
	fi
done

# Removing unused files
logo "Removing unused files..."
rm -rf ~/.mozilla/firefox/*.default-release/.git ~/.mozilla/firefox/*.default-release/.github ~/.mozilla/firefox/*.default-release/penguinfox-installer.sh ~/.mozilla/firefox/*.default-release/README.md

logo "Done!"
printf "Completed penguinFox installation, now open Firefox and enjoy!"
