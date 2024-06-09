# LINUX, AFTER INSTALLATION

I use Kubuntu (KDE/Plasma + Ubuntu) but this script should be compatible with other debian based distros


After fresh linux install, run install.sh to complete linux setup.

## Scripts

| Script Name               | Details                                                                       |
|---------------------------|-------------------------------------------------------------------------------|
| 00_install_basic.sh       | updates and installs basic dependencie                                        |
| 01_remove_snap.sh         | I feel like snap is buggy, removes snap                                       |
| 02_apt_firefox.sh         | Installs firefox from ppa not snap                                            |
| 03_install_dot_files.sh   | clones my dotfiles and installs stow to create config file symlinks           |
| 04_install_nvim.sh        | Installs neovim                                                               |
| 05_install_zsh.sh         | Installs zsh and OhMyZsh, I prefer it over bash because it looks pretty       |
| 06_install_fonts.sh       | Installs JetBrainsMono and Icon fonts                                         |
| 07_install_kitty.sh       | GPU-accelerated terminal, great for using different fonts for different chars |
| 08_install_tmux.sh        | tmux is tmux                                                                  |
