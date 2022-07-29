#!/bin/bash

config="$HOME/.config/bspwm/rofi/launch.sh"
powermenu="$HOME/.config/bspwm/rofi/theme.sh"

declare -a options=(
  "latte"
  "frappe"
  "mocha"
  "macchiato"
  "saga"
  "quit"
)

choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i -l 6 -p 'Rofi Themes' -theme ~/.config/bspwm/rofi/themes/saga.rasi)

case $choice in
  'latte')
    echo "rofi -show drun -theme ~/.config/bspwm/rofi/themes/catppuccin-latte.rasi" > $config
    echo "rofi -show p -modi p:rofi-power-menu -theme ~/.config/bspwm/rofi/themes/catppuccin-latte.rasi" > $powermenu
    chmod +x $config 
    chmod +x $powermenu ;;
  'frappe')
    echo "rofi -show drun -theme ~/.config/bspwm/rofi/themes/catppuccin-frappe" > $config 
    echo "rofi -show p -modi p:rofi-power-menu -theme ~/.config/bspwm/rofi/themes/catppuccin-frappe.rasi" > $powermenu
    chmod +x $config 
    chmod +x $powermenu ;;
  'mocha')
    echo "rofi -show drun -theme ~/.config/bspwm/rofi/themes/catppuccin-mocha.rasi" > $config
    echo "rofi -show p -modi p:rofi-power-menu -theme ~/.config/bspwm/rofi/themes/catppuccin-mocha.rasi" > $powermenu
    chmod +x $config 
    chmod +x $powermenu ;;
  'macchiato')
    echo "rofi -show drun -theme ~/.config/bspwm/rofi/themes/catppuccin-macchiato.rasi" > $config
    echo "rofi -show p -modi p:rofi-power-menu -theme ~/.config/bspwm/rofi/themes/catppuccin-macchiato.rasi" > $powermenu
    chmod +x $config 
    chmod +x $powermenu ;;
  'saga')
    echo "rofi -show drun -theme ~/.config/bspwm/rofi/themes/saga.rasi" > $config
    echo "rofi -show p -modi p:rofi-power-menu -theme ~/.config/bspwm/rofi/themes/saga.rasi" > $powermenu
    chmod +x $config 
    chmod +x $powermenu ;;
  'quit')
    echo "No theme chosen" && exit 1 ;;
esac
