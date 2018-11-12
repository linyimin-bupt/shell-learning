#! /bin/bash

SOURCE_SUFFIX=txt
DES_SUFFIX=md

if [ -n "$1" ]
then
  directory=$1
else
  directory=${PWD}
fi
for file in $directory/*
do 
  extension=${file##*.}                     # Get suffix of file
  if [ "$SOURCE_SUFFIX" = "$extension" ]
  then
    filename=${file%$SOURCE_SUFFIX}
    filename=${filename}${DES_SUFFIX}
    mv $file $filename
    echo "Change ${file} to ${filename}"
  fi
done

exit 0

