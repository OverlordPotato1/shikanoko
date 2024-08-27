#!/bin/bash

GPU=$(lspci | grep -E 'VGA|3D')

echo "$GPU"

acpi_output=$(acpi -b)

# Determine if the battery is not discharging
if [[ "$acpi_output" != *"Discharging"* ]]; then
  battery_not_discharging=true
else
  battery_not_discharging=false
fi

if (echo "$GPU" | grep -qi "nvidia") && battery_not_discharging; then
	cp ./env_vars/nvidia.source ./env_vars.source
else
	cp ./env_vars/other.source ./env_vars.source
fi
