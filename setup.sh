#!/bin/bash

chmod +x ./hypr/scripts/install_everything.sh
source ./hypr/scripts/install_everything.sh

echo "Moving files to position"

mkdir -p ~/.config/hypr
cp -r ./hypr/* ~/.config/hypr
mkdir -p ~/.config/kitty
cp -r ./kitty/* ~/.config/kitty
mkdir -p ~/.config/mako
cp -r ./mako/* ~/.config/mako
mkdir -p ~/.config/waybar
cp -r ./waybar/* ~/.config/waybar
mkdir -p ~/.config/wofi
cp -r ./wofi/* ~/.config/wofi
mkdir -p ~/Pictures/System/Backgrounds/Shikanokonokonokokoshitantan
cp -r ./Images/* ~/Pictures/System/Backgrounds/Shikanokonokonokokoshitantan
