#! /bin/bash

# $REPLY is the default value for a `read` command.

echo 
echo -n "What your favorite vegetable?"
read
# $REPLY holds the value of last "read" if and only if no variable supplied.

echo "Your favorite vegetable is $REPLY"

echo
echo -n "What your favorite fruit?"
read fruit

echo "Your favorite fruit is $fruit"
echo "But..."
echo "Value of \$REPLY is still $REPLY"

echo
exit