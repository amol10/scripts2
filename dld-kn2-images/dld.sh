#!/bin/bash

bp=~/Documents/code/kn/keepnotes2
fp=$bp/$1

#cat $fp
for i in `grep -Po "!\[\](.*)" $fp`
do
	url=$(echo $i | sed -e "s/\!\[\](//g" | sed -e "s/)//")
	echo url: $url
	read -p "download? (y/n): " ch
	if [[ $ch != "y" ]]
	then
		continue
	fi

	echo downloading...
	curl -o out.jpg $url
	eog out.jpg
	read -p "enter filename: " fn
	ifp=$(dirname $fp)/$fn.jpg
	echo moving to $ifp
	mv out.jpg $ifp

	echo replacing image path in file...
	python3 replace.py $url $fp $fn.jpg
done
