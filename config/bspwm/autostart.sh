#!/bin/bash

eww daemon &
$HOME/.config/bspwm/polybar/launch.sh &
feh --bg-fill $HOME/.config/bspwm/wallpapers/Sunset4K.jpg &
picom --config $HOME/.config/bspwm/picom/picom.conf --experimental-backends --animations &
dunst -config $HOME/.config/bspwm/dunst/dunstrc &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
