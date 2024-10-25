#!/bin/sh
curl -LO "https://download.oracle.com/java/21/latest/jdk-21_linux-x64_bin.deb"
sudo dpkg -i jdk-21_linux-x64_bin.deb
sudo apt-get install -f
sudo rm jdk-21_linux-x64_bin.deb
