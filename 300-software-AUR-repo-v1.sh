#!/bin/bash
set -e
echo "One or more packages are coming from AUR as source."
echo "If a package from AUR fails to install, all other packages after that will NOT be installed."
echo "We put the set -e for you to notice some package broke the script and you can intervene manually."
echo "Put a hashtag in front of set -e to keep installing (the rest) even if there is an error."
echo "Then figure out how to get the broken package installed or leave it until the maintainer from AUR"
echo "will fix it for you. Give it some time."
sleep 3

# software from AUR (Arch User Repositories)
# https://aur.archlinux.org/packages/

#giving tmp folder extra gb in order not to run out of disk space while installing software
#only if you run into issues with that
#sudo mount -o remount,size=5G,noatime /tmp

sh AUR/install-awesome-terminal-fonts*.sh
sh AUR/install-neofetch-v*.sh
sh AUR/install-ttf-font-awesome*.sh
sh AUR/install-zsh*.sh

# these come always last

sh AUR/install-hardcode-fixer-git-v*.sh
sudo hardcode-fixer

echo "################################################################"
echo "####        Software from AUR Repository installed        ######"
echo "################################################################"
