#!/bin/sh
sudo snap disable firefox
sudo snap disconnect firefox:host-hunspell
sudo systemctl disable snapd.service
sudo systemctl disable snapd.socket
sudo systemctl disable snapd.seeded.service
sudo unmount /var/snap/firefox/common/host-hunspell
sudo snap remove --purge firefox
sudo snap remove --purge gnome-3-38-2004
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge core20
sudo snap remove --purge bare
sudo rm -rf /var/cache/snapd/
sudo apt autoremove --purge snapd gnome-software-plugin-snap
sudo rm -rf ~/snap
sudo apt-mark hold snapd
