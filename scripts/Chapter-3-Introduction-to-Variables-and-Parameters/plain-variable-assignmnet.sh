#! /bin/bash

# Assignment

a=879
echo "The value of \"a\" is $a."

# Assigment using 'let'

let a=16+5
echo "THe value of \"a\" is now $a"

echo

# In a 'for' loop (really, a type of disguised assignment)

for a in  7 8 9 
do
  echo -n "$a"
done

echo
echo


# In a 'read' statement (also a type of assignment)

echo -n "Enter \"a\" "
read a 
echo "The value of \"a\" is now $a"

echo
exit 0