#! /bin/bash

# Variables: assignment and substitution

a=375
hello=$a

# ---------------------------------------------------------------
# No space permitted on either side of = sign when initializing variables.
# ---------------------------------------------------------------

echo hello              # hello
# No a variable reference, just the string "hello" ...

echo $hello             # 375

echo ${hello}           # 375

# Quoting ...

echo "$hello"           # 375

echo "${hello}"         # 375

echo


hello="A B  C       D"
echo $hello             # A B C D
echo "$hello"           # A B  C       D

# ---------------------------------------------------------------
# Quoting a variable preserves whitespace.
# ---------------------------------------------------------------

echo

echo '$hello'           # $hello

# ---------------------------------------------------------------
# Variable referencing disabled(escaped) by single quotes, which causes the "$" to be interpreted literally
# ---------------------------------------------------------------  

numbers="one two three"
#

other_numbers="1 2 3"
# other_number= 1 2 3   Gives an error message
# 
# If there is whitespace embeded within a variable, then quotes are necessary.