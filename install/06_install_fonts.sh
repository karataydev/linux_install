#!/bin/sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
curl -fsSL "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/NerdFontsSymbolsOnly.tar.xz" -o nerd-font.tar.xz
tar -xf nerd-font.tar.xz -C $HOME/.local/share/fonts/
rm nerd-font.tar.xz
curl -fsSL "https://github.com/yamatsum/nonicons/raw/master/dist/nonicons.ttf" -o noicons.ttf
mv noicons.ttf $HOME/.local/share/fonts/
echo "downloading zed font"
curl -fsSL "https://github.com/zed-industries/zed-fonts/releases/download/1.2.0/zed-mono-1.2.0.zip" -o zed-font.zip
echo "waiting a little"
unzip -a zed-font.zip -d $HOME/.local/share/fonts/ 
rm zed-font.zip
