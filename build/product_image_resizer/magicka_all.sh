#!/bin/bash

if [ "$*" == "" ]; then
	arg=$(find ./originals -maxdepth 1 -type d | sort | grep -oP '[0-9\-_]+' | tail -n 1)
else
	arg="$*"
fi

path=$(echo "$arg" | sed -r 's/^(.+?)\/[^/]+$/\1/')
filename=$(echo "$arg" | grep -oP '[^/]+?$')

zoom_name="zoom/$(echo $filename | sed -r 's/^(.+?)(\..{3})$/\1_1\2/')"
liten_name="liten/$(echo $filename | sed -r 's/^(.+?)(\..{3})$/\1_S\2/')"
list_name="$filename"
./treestruct.sh $path
ls originals/$path/*.jpg | while read line; do
	./magicka_kvadratformat.sh $line $path
done

./magicka_zoom_images.sh $path
cd resized/$path
