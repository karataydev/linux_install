#!/bin/sh
wget -qO - https://regolith-desktop.org/regolith.key | \
gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg trusted=yes] \
https://regolith-desktop.org/release-3_2-ubuntu-noble-amd64 noble main" | \
sudo tee /etc/apt/sources.list.d/regolith.list
sudo apt update
sudo apt install regolith-desktop regolith-session-flashback regolith-look-lascaille regolith-look-nevil regolith-look-ayu-dark
sudo cp mt3.jpg /usr/share/backgrounds/mt3.jpg
mkdir ~/.config/regolith3
echo "regolith.wallpaper.file: /usr/share/backgrounds/mt3.jpg" >> ~/.config/regolith3/Xresources
