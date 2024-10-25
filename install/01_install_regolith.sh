#!/bin/sh
wget -qO - https://regolith-desktop.org/regolith.key | gpg --dearmor | sudo tee /usr/share/keyrings/regolith-archive-keyring.gpg > /dev/null
echo deb "[arch=amd64 signed-by=/usr/share/keyrings/regolith-archive-keyring.gpg] https://regolith-desktop.org/release-3_0-ubuntu-jammy-amd64 jammy main" | \
sudo tee /etc/apt/sources.list.d/regolith.list
sudo apt update
sudo apt install regolith-desktop regolith-session-flashback regolith-look-lascaille regolith-look-ubuntu regolith-look-ayu-dark
sudo apt install regolith-system-ubuntu
sudo cp mt3.jpg echo /usr/share/backgrounds/mt3.jpg
echo "regolith.wallpaper.file: /usr/share/backgrounds/mt3.jpg" >> ~/.config/regolith3/Xresources
