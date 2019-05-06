#!/bin/bash
filepath=$1
foldername=$2
filename=$(grep -oP '[^/]+?$' <<< $1)
artnr=$(grep -oP '^[^\.]+' <<< $filename)
if [ "$artnr" == "" ]; then
	exit
fi
ext=$(sed "s/$artnr//" <<< $filename)
filename_zoom=$artnr"_1"$ext
filename_liten=$artnr"_S"$ext
filepath_zoom="resized/$foldername/zoom/$filename_zoom"
filepath_liten="resized/$foldername/liten/$filename_liten"
filepath_list="resized/$foldername/$filename"

#echo ""
#echo "filepath: $filepath"
#echo "foldername: $foldername"
#echo "filename: $filename"
#echo "artnr: $artnr"
#echo "ext: $ext"
#echo "filename_zoom: $filename_zoom"
#echo "filename_liten: $filename_liten"
#echo ""
#exit

echo "converting $filepath"

convert "$filepath" -trim -resize 315x315 -background white -gravity center -extent 335x335 -strip -quality 95 "$filepath_liten"	# thumbnail
convert "$filepath" -trim -resize 430x430 -background white -gravity center -extent 500x500 -strip -quality 95 "$filepath_list" 	# list image
convert "$filepath" -trim -resize '1500x1500>' -background white -gravity center -quality 95 "$filepath_zoom" 				# original zoom image
