#! /bin/bash

# Use PID of srcipt as start-string

str0=$$

str1=$(echo "$$" | md5sum | md5sum)

POS=2
LEN=8

randstring=${str1:$POS:$LEN}

echo "$randstring"

echo $?