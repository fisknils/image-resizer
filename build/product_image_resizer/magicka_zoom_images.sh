#!/bin/bash
path=$1
mkdir -p "resized/$path/zoom"
ls "originals/$path/zoom" | while read line; do
	echo "resizing $line"
	convert "originals/$path/zoom/$line" -trim -resize 1200x1200\> "resized/$path/zoom/$line"
done

