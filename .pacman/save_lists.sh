#!/bin/sh

# copy pacman native package list
pacman -Qn | gawk '{print $1}' > $HOME/.pacman/pacman.txt
#copy aur package list
pacman -Qm | gawk '{print $1}' > $HOME/.pacman/aur.txt
