#!/bin/sh

if [[ $(hostname -s) = seasMBA ]]; then
    #Right Monitor setup
    xfconf-query -c displays -p /Default/DP-1-8/Active -s true
    xfconf-query -c displays -p /Default/DP-1-8/Primary -s true 
    xfconf-query -c displays -p /Default/DP-1-8/Position/X -s 2560
    xfconf-query -c displays -p /Default/DP-1-8/Position/Y -s 0
    #Left Monitor setup
    xfconf-query -c displays -p /Default/DP-1-1-8/Active -s true
    xfconf-query -c displays -p /Default/DP-1-1-8/Primary -s false 
    xfconf-query -c displays -p /Default/DP-1-1-8/Position/X -s 0
    xfconf-query -c displays -p /Default/DP-1-1-8/Position/Y -s 0
    #laptop setup
    xfconf-query -c displays -p /Default/eDP-1/Active -s false
    xfconf-query -c displays -p /Default/eDP-1/Primary -s false

    #activate
    xfconf-query --create -c displays -p /Schemes/Apply -t string -s 'Default'
    xmodmap $HOME/.Xmodmap
fi
