#! /bin/bash

for planet in Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto
do
  echo $planet              # Each planet on a sparate line
done
echo

for planet in "Mercury Venus Earth Mars Jupiter Saturn Uranus Neptune Pluto"
do
  echo $planet              # All planets on same line
done

echo

exit 0

# Entire 'list' enclosed in quotes creates a single variable