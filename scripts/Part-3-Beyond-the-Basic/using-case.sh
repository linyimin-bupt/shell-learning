#! /bin/bash

echo

echo "Hit a key, then hit return"

read keyPress

case "$keyPress" in

[[:lower:]] ) echo "Lowercase letter";;
[[:upper:]] ) echo "Uppercase letter";;
[0-9] )       echo "Digit";;
*           ) echo "Punctuation, whitespace,or other";;

esac

exit 0