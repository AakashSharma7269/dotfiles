#!/bin/bash

# Note, set NOPASSWD in sudoers file before running this

##################################################################################################################
# Installing yay (AUR helper)
##################################################################################################################
git clone https://aur.archlinux.org/yay.git /tmp/yay-git-cloned
cd /tmp/yay-git-cloned/
makepkg -sfci --noconfirm --needed
rm -rf /tmp/yay-git-cloned

##################################################################################################################
# Installing AUR packages
##################################################################################################################
yay -S --noconfirm --needed alacritty-ligatures
yay -S --noconfirm --needed bat
yay -S --noconfirm --needed betterlockscreen
yay -S --noconfirm --needed bitwarden-bin
yay -S --noconfirm --needed brave-bin
yay -S --noconfirm --needed cursor-theme-macos-big-sur
yay -S --noconfirm --needed devour
yay -S --noconfirm --needed discord-ptb
yay -S --noconfirm --needed freetube-bin
yay -S --noconfirm --needed gotop
yay -S --noconfirm --needed moc-pulse
yay -S --noconfirm --needed nerd-fonts-jetbrains-mono
yay -S --noconfirm --needed nordic-darker-theme
yay -S --noconfirm --needed optimus-manager
yay -S --noconfirm --needed picom-ibhagwan-git
yay -S --noconfirm --needed oh-my-zsh-git
yay -S --noconfirm --needed polybar
yay -S --noconfirm --needed timeshift
 

echo "################################################################"
echo "################### AUR packages installed"
echo "################################################################"
