#!/bin/sh
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# Place the kitty.desktop file somewhere it can be found by the OS

sudo cp ~/.local/kitty.app/share/applications/kitty.desktop /usr/share/applications/
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
sudo cp ~/.local/kitty.app/share/applications/kitty-open.desktop /usr/share/applications/
# Update the paths to the kitty and its icon in the kitty desktop file(s)
sudo sed -i "s|Icon=kitty|Icon=/home/$USER/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" /usr/share/applications/kitty*.desktop
sudo sed -i "s|Exec=kitty|Exec=/home/$USER/.local/kitty.app/bin/kitty|g" /usr/share/applications/kitty*.desktop
# Make xdg-terminal-exec (and hence desktop environments that support it use kitty)
echo 'kitty.desktop' > ~/.config/xdg-terminals.list
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator $HOME/.local/kitty.app/bin/kitty 50
command -v zsh | sudo tee -a /etc/shells
sudo chsh -s $(which zsh) $USER
