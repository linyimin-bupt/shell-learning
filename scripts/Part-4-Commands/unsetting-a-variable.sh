#! /bin/bash

variable=hello

echo "variable = $variable"

unset variable

echo "(unset) variable = $variable"   # $variable is null

if [ -z "$variable" ]
then
  echo "\$variable has zero length."
fi

exit 0