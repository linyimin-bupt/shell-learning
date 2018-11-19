#! /bin/bash

LIMIT=19

echo

echo "Printing Numbers 1 through 20 (But not 3 and 11)"

echo "Using continue statement"

a=0

while [ $a -le $LIMIT ]
do
  a=$(($a+1))
  if [[ $a -eq 3 || $a -eq 11 ]]
  then
    continue
  fi
  echo -n "$a "
done

echo
echo "Using break statement"


a=0
while [ $a -le $LIMIT ]
do 
  a=$(($a+1))
  if [[ $a -eq 3 ]]
  then
    break
  fi
  echo -n "$a "
done
echo