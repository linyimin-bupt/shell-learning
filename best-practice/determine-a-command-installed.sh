#! /bin/bash

if [ -z $1 ]
then
  echo "You need to input the name of command"
  echo "Usage: bash $0 command"
  exit 1
fi

IS_INSTALLED=$(type $1)

if [ -z "$IS_INSTALLED" ]
then
  echo "$1 has not installed yet"
else
  echo "$1 has installed"
fi

