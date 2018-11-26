#! /bin/bash

# Invoke this script with three commnad-line parameters.

echo

echo "Positional parameters before set \`uname -a\`: "
echo "command-line argument #1 = $1"
echo "command-line argument #2 = $2"
echo "command-line argument #3 = $3"

set `uname -a`              # Set the positional parameters to the output of the command `uname -a`

echo

echo "Positional parameters after set \`uname -a\`: "

echo
echo "command-line argument #1 = $1"
echo "command-line argument #2 = $2"
echo "command-line argument #3 = $3"

var="4 5 6"

set $var

echo "Positional parameters after set \$var: "

echo
echo "command-line argument #1 = $1"
echo "command-line argument #2 = $2"
echo "command-line argument #3 = $3"

var="7 8 9"

set -- $var

echo "Positional parameters after set -- \$var: "

echo
echo "command-line argument #1 = $1"
echo "command-line argument #2 = $2"
echo "command-line argument #3 = $3"

# unset the positional parameters

set --
echo
echo "command-line argument #1 = $1"
echo "command-line argument #2 = $2"
echo "command-line argument #3 = $3"
