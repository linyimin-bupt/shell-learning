#! /bin/bash

echo

var="'(]\\{}\$\""
echo $var     # '(]\{}$"
echo "$var"   # '(]\{}$"

echo 

IFS='\'

echo $var        # '(] {}$"     \ converted to space. Why?
echo "$var"      # '(]\{}$"

echo

var2="\\\\\""
echo $var2       #   "
echo "$var2"     # \\"
echo

# But ... var2="\\\\"" is illegal. For the last " charater need to escape
var3='\\\\'
echo "$var3"     # \\\\
# Strong quoting works, though.
