#! /bin/bash

a=2334            # Integer
let "a += 1"      # Integer, still
echo "a = $a"     # a = 2335

echo

b=${a/23/BB}      # Substitute "BB" for "23"。 This transforms $b into a string

echo "b = $b"     # b = BB35

declare -i b      # Declaring it an integer dose not help

echo "b = $b"     # b = BB35
let "b += 1"
echo "b = $b"     # b = 1
echo              # Bash sets the "integer value" of a string to 0

c=BB34
echo "c = $c"     # c = BB34
d=${c/BB/23}      # Substitute "23" for "BB", This makes $d an integer

echo "d = $d"     # d = 2334
let "d += 1"      # 2334 + 1
echo "d = $d"     # d = 2335
echo

###### What about null avariables?

e=''            # ... Or e="" ... Or e=
echo "e= $e"    # e =

let "e += 1"    # Arithmetic operations allowed a null available
echo "e = $e"   # e = 1
echo            # Null available transformed into an integer, whoes value is 0


###### What about undeclared variables?

echo "f = $f"       # f=
let "f += 1"        # Arithmetic operations allowed
echo "f = $f"       # f = 1
echo                # Undeclared available transformed into an integer, whoes value is 0

###### Conclusion: Variables in Bash are untyped with all attendant consequences.
###### Bash(Usually) sets the "integer value" of null to zero when performing an arithmetic operation.