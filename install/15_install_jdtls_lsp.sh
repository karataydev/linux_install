#!/bin/sh
curl -LO https://download.eclipse.org/jdtls/snapshots/jdt-language-server-1.41.0-202409270451.tar.gz
mkdir $HOME/.local/share/jdtls
sudo tar -C $HOME/.local/share/jdtls -xzf jdt-language-server-1.41.0-202409270451.tar.gz
sudo rm jdt-language-server-1.41.0-202409270451.tar.gz

