#! /bin/bash

# Using 'shift' to step through all the positional parameters.


until [ -z "$1" ]
do
  echo -n "$1"
  shift
done

echo

# But what happens to the "used-up" parameters?

echo '----------------- echo $2 --------------------------'
echo $2
echo '----------------- echo $2 --------------------------'
# Nothing echoes!
# When $2 shift into $1(and there is no $3 shift into $2), then $2 remains empty.
# So, it is not a parameter *copy*, but a *move*.

exit