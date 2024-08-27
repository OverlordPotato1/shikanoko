#!/bin/bash

for file in *; do
	if [ -f "$file" ]; then
		chmod +x "$file"
		echo "Made $file executable"
	fi
done
