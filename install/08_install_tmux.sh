#!/bin/sh
sudo apt install -y tmux
sudo rm -r $HOME/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source-file ~/.tmux.conf
