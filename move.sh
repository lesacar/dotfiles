#!/bin/bash

mkdir -pv ~/.local
cp -rv bin ~/.local/


create_symlink() {
  local target=$1
  local link_name=$2

  if [ -e "$link_name" ]; then
    if [ -L "$link_name" ]; then
      if [ "$(readlink "$link_name")" != "$target" ]; then
        echo "Symlink $link_name already exists but points to a different target. Skipping..."
      else
        echo "Symlink $link_name already exists and points to the correct target."
      fi
    else
      echo "$link_name exists and is not a symlink. Skipping..."
    fi
  else
    ln -s "$target" "$link_name"
    echo "Created symlink $link_name -> $target"
  fi
}



# Create symlinks with proper checks
create_symlink ~/.dotfiles/nvim ~/.config/nvim
create_symlink ~/.dotfiles/i3 ~/.config/i3
create_symlink ~/.dotfiles/i3blocks ~/.config/i3blocks
create_symlink ~/.dotfiles/sway ~/.config/sway
create_symlink ~/.dotfiles/picom ~/.config/picom
create_symlink ~/.dotfiles/clangd ~/.config/clangd
create_symlink ~/.dotfiles/htop ~/.config/htop
create_symlink ~/.dotfiles/mpv ~/.config/mpv
create_symlink ~/.dotfiles/dunst ~/.config/dunst
create_symlink ~/.dotfiles/mako ~/.config/mako
create_symlink ~/.dotfiles/bin ~/.local/bin
create_symlink ~/.dotfiles/foot ~/.config/foot
create_symlink ~/.dotfiles/kitty ~/.config/kitty
create_symlink ~/.dotfiles/fontconfig ~/.config/fontconfig
create_symlink ~/.dotfiles/.bashrc ~/.bashrc
create_symlink ~/.dotfiles/.bash_prompt ~/.bash_prompt


