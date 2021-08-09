#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal
$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
#setxkbmap -layout be

# switching out capslock with escape key
xmodmap -e "keycode 9 = Caps_Lock"; xmodmap -e "keycode 66 = Escape"
xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape'

#music server icon
killall mocicon
mocicon &

#draw your wallpaper
nitrogen --restore

dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

run nm-applet &
run xfce4-power-manager &
numlockx on &
#blueberry-tray &
picom --experimental-backends --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

#caching neofetch output
touch /home/$USER/.config/neofetch/neofetchcache
neofetch > /home/$USER/.config/neofetch/neofetchcache

# vim navigation rates
xset r rate 350 60