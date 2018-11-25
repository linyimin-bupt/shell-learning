#! /bin/bash

# printf demo

declare -r PI=3.14159265358979

declare -r DecimalConstant=31373

Message1="Greetings,"
Message2="Earthling."

echo

printf "Pi to 2 decimal places = %1.2f" $PI
echo
printf "Pi to 9 deciaml places = %1.9f" $PI

printf "\n"

printf "Constant = \t%d\n" $DecimalConstant   # Inserts a tab

printf "%s %s \n" $Message1 $Message2

echo
