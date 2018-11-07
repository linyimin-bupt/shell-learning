#! /bin/bash

if [ -n $string1 ]        # string1 has not been declared or initialized.
then
  echo "String \"string1\" is not null"
else
  "String \"string1\" is null"
fi                        # Wrong result

#+ Shows $string1 as not null,although it was not initialized.

echo

if [ -n "$string1" ]
then
  echo "String \"string1\" is not null"
else
  echo "String \"string1\" is null"
fi                                # Gives correct resutl

if [ $string1 ]
then
  echo "String \"string1\" is not null"
else
  echo "String \"string1\" is null"
fi                              # Gives correct result.

echo 

string1=initialized
if [ $string1 ]
then
  echo "String \"string1\" is not null"
else
  echo "String \"string1\" is null"
fi                              # Gives correct result.

# Still, it is better to quote it ("$string1"), because . . .

string1="a = b"
echo $string1
if [ $string1 ]
then
  echo "String \"string1\" is not null"
else
  echo "String \"string1\" is null"
fi                              # Gives wrong result.

#### It is a good practice to quote it (if [ "$string1" ]).