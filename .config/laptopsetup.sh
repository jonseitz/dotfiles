#!/bin/sh

if [[ $(hostname -s) = seasMBA ]]; then
    #Right Monitor setup
    xfconf-query -c displays -p /Default/DP-1-8/Active -s false
    xfconf-query -c displays -p /Default/DP-1-8/Primary -s false 
    #Left Monitor setup
    xfconf-query -c displays -p /Default/DP-1-1-8/Active -s false
    xfconf-query -c displays -p /Default/DP-1-1-8/Primary -s false 
    #laptop setup
    xfconf-query -c displays -p /Default/eDP-1/Active -s true
    xfconf-query -c displays -p /Default/eDP-1/Primary -s true
    xfconf-query -c displays -p /Default/eDP-1/Position/X -s 0
    xfconf-query -c displays -p /Default/eDP-1/Position/Y -s 0


    #activate
    xfconf-query --create -c displays -p /Schemes/Apply -t string -s 'Default'
fi
