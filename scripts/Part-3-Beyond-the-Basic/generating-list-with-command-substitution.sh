#! /bin/bash

NUMBERS="9 7 3 8 37.53"

for number in $NUMBERS
do
  echo $number
done
# The same as follow
for number in $(echo $NUMBERS)
do
  echo $number
done

echo 

exit 0