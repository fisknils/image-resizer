#!/bin/bash
path=$1

find "$path" -iname \*.png | grep -v converted_png | while read line; do
	mypath=$(echo $line | sed -r 's/[^\/]+?$//')
	mkdir -p "$mypath/converted_png"
	convert -flatten "$line" "$(echo $line | sed 's/.png/.jpg/')"
	mv -v "$line" "$mypath""converted_png/"
done