#! /bin/bash

LIST="one two three"

for a in $LIST        # Splits variable in parts at whitespace.
do
  echo "$a"
done

# one
# two
# three
echo '---------------'

for a in "$LIST"      # Preserves whitespace in a single variable
do
  echo $a
done