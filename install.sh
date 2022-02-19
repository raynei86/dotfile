#!/usr/bin/sh

cd ~ || exit

# Unfortunately will assume that it is cloned in the home directory because I'm bad at shell scripting
mkdir ~/Pictures
mv ~/dotfile/yuugure.png ~/Pictures/

# Create the directories
mkdir -p .vim
mkdir -p .doom.d
mkdir -p .urxvt
mkdir -p .config
mkdir -p .config/bspwm
mkdir -p .config/sxhkd
mkdir -p .config/fish
mkdir -p .config/dunst
mkdir -p .config/rofi
mkdir -p .config/polybar
mkdir -p .config/scripts

# Move the stuff into their place
mv ~/dotfile/emacs/* ~/.doom.d
mv ~/dotfile/vim/vimrc ~/.vimrc
mv ~/dotfile/vim/* ~/.vim
mv ~/dotfile/urxvt/* ~/.urxvt
mv ~/dotfile/urxvt/.Xresoures ~/.Xresources
mv ~/dotfile/bspwm/* ~/.config/bspwm
mv ~/dotfile/sxhkd/* ~/.config/sxhkd
mv ~/dotfile/fish/* ~/.config/fish
mv ~/dotfile/dunst/* ~/.config/dunst
mv ~/dotfile/rofi/* ~/.config/rofi
mv ~/dotfile/polybar/* ~/.config/polybar
mv ~/dotfile/alacritty/* ~/.config/alacritty
mv ~/dotfile/scripts/* ~/.config/scripts

# Make the stuff executable
chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/scripts/*.sh
chmod +x ~/.config/polybar/launch
