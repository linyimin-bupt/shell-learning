#! /bin/bash

# Setting a variable to the output of a loop

variable1=`for i in 1 2 3 4 5
do
  echo -n "$i"
done
`

echo "variable1=$variable1"     # variable1=12345

i=0
variable2=`while [ "$i" -lt 10 ]
do
  echo -n $i
  let "i=i+1"
done
`
echo "varialbe2=$variable2"     # variable2=0123456789

# It's possible to embed a loop inside a variable declaration

exit 0