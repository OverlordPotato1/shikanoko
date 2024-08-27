#!/bin/bash

chmod +x ./hypr/scripts/install_everything.sh
source ./hypr/scripts/install_everything.sh

echo "Moving files to position"

cp -r ./hypr ~/.config/hypr
cp -r ./kitty ~/.config/kitty
cp -r ./mako ~/.config/mako
cp -r ./waybar ~/.config/waybar
cp -r ./wofi ~/.config/xsettingsd
mkdir -p ~/Pictures/System/Backgrounds/Shikanokonokonokokoshitantan
cp -r ./Images ~/Pictures/System/Backgrounds/Shikanokonokonokokoshitantan
