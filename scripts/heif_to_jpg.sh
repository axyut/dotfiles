#!/bin/bash
# apt install libheif-examples
for file in ./*.HEIC; do
	echo "Converting $file to ${file%.*}.jpg"
	heif-convert "$file" "${file%.*}.jpg"
done
