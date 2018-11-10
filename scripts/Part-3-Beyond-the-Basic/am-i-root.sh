#! /bin/bash
ROOT_UID=0

if [ $UID -eq $ROOT_UID ]
then
  echo "You are root."
else
  echo "You are just an ordinary user(but mom loves you just then same)"
fi


# ------------------------------

# An alternate method of getting to the root of matters.

ROOT_USER_NAME=root
username=$(id -nu)

if [ "$username" == "$ROOT_USER_NAME" ]
then
  echo "Rooty, toot, toot.You are root."
else
  echo "You are just a regular fella."
fi

exit 0
