#!/bin/sh
cd $HOME
git clone https://github.com/karataymarufemre/.dotfiles.git dotfiles
sudo apt install -y stow
mv .bashrc .bashrc_old
mv .profile .profile_old
cd dotfiles
sudo stow .
cd ..

