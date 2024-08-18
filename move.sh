#!/bin/bash

mkdir -pv ~/.local
# cp -rv bin ~/.local/bin
ln -s ~/.dotfiles/bin ~/.local/

ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/i3 ~/.config/i3 
ln -s ~/.dotfiles/i3blocks ~/.config/i3blocks 
ln -s ~/.dotfiles/sway ~/.config/sway 
ln -s ~/.dotfiles/picom ~/.config/picom 
ln -s ~/.dotfiles/clangd ~/.config/clangd 
ln -s ~/.dotfiles/htop ~/.config/htop 
ln -s ~/.dotfiles/mpv ~/.config/mpv 
ln -s ~/.dotfiles/dunst ~/.config/dunst 
ln -s ~/.dotfiles/mako ~/.config/mako 

# cp -rv nvim ~/.config/
# cp -rv i3 ~/.config/
# cp -rv i3blocks ~/.config/
# cp -rv sway ~/.config/
# cp -rv picom ~/.config/
# cp -rv clangd ~/.config/
# cp -rv htop ~/.config/
# cp -rv mpv ~/.config/
# cp -rv dunst ~/.config/
# cp -rv mako ~/.config/
