#!/bin/bash

check_install() {
  if ! command -v $1 &> /dev/null
  then
    echo "$1 could not be found, installing..."
    sudo pacman -S --noconfirm $1
  else
    echo "$1 is already installed."
  fi
}

packages=("network-manager-applet" "ttf-font-awesome" "lspci" "hyprpaper" "NetworkManager" "mako" "waybar" "acpi" "fish")

echo "Checking dependencies"

for package in "${packages[@]}"; do
	check_install $package
done
