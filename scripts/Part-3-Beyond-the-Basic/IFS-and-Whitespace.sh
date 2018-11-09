#! /bin/bash

var1="a+b+c"
var2="d-e-f"
var3="g,h,i"

IFS=+       # The plus sign will be interpreted as a separator.

echo $var1  # a b c  
echo $var2  # d-e-f
echo $var3  # g,h,i

echo 

IFS=,       # The comma sign will be interoreted as a seperator.

echo $var1  # a+b+c
echo $var2  # d-e-f
echo $var3  # g h i

echo 

IFS=" "     # The space character will be interpreted as a separator.

echo $var1  # a+b+c
echo $var2  # d-e-f
echo $var3  # g,h,i

echo 

#However......
# $IFS treats whitespace differently than other characters.

output_args_one_perline() {
  for arg
  do
    echo "[$arg]"
  done
}

echo; echo "ISF=\" \""
echo "-------"

IFS=" "

var="a  b c   "
output_args_one_perline $var

# result
# [a]
# [b]
# [c]

echo ;echo "IFS=\":\""

IFS=":"
var="a::b:c:::"

output_args_one_perline $var

# result
# []
# [a]
# []
# [c]
# []
# []

echo
exit
