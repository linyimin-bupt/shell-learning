#! /bin/bash

# Call this script with at least 10 parameters, for example

# ./scriptname 1 2 3 4 5 6 7 8 9 10

MIN_PARAMS=10

echo

echo "The name of this script is \"$0\""

echo

if [ -n "$1" ]
then
  echo "Parameter #1 is $1"
fi

if [ -n "$2" ]
then
  echo "Parameter #1 is $2"
fi

if [ -n "${10}" ]         # Parameters > $9 must be enclosed in {brackets}
then
  echo "Parameter #1 is ${10}"
fi

echo "---------------------------"

echo "All the command-line parameters are: $*"

echo "---------------------------"

echo "All the command-line parameters are: $@"

echo "---------------------------"

if [ $# -lt $MIN_PARAMS ]
then 
  echo
  echo "this script nedd at least $MIN_PARAMs command-line arguments!"
fi

echo

exit 0


