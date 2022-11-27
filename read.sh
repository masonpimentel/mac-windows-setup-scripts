#!/bin/bash

if [ -z "$1" ]
then
    echo "Usage: read.sh <7z zip file>"
    exit
fi

cp $1 /tmp

basename="${1%.7z}"
dirTxt="/tmp/$basename.txt"

7z e -y -o/tmp /tmp/$1 
cat $dirTxt
rm $dirTxt
