#!/bin/bash
path=$1
filename=$2
zoom_name=$3
liten_name=$4

# kvadratformat - generate small thumb
convert "$path/$filename" -trim -resize 315x315 -background white -gravity center -extent 335x335 "$path/artiklar/$liten_name"

# kvadratformat - generate list image
convert "$path/$filename" -trim -resize 430x430 -background white -gravity center -extent 500x500 "$path/artiklar/$filename"

# kvadratformat - copy original image to zoom
cp "$path/$filename" "$path/artiklar/$zoom_name"
