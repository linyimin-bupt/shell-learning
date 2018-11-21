#! /bin/bash

PS3='Choose your favorite vegetable: '    # Sets the prompt string, otherwise it defaults to #? .

echo

select vegetable in "beans" "carrots" "potatoes" "onions" "rutabagas"

do
if [[ $vegetable = "beans" || $vegetable = "carrots" || $vegetable = "potatoes" || $vegetable = "onions" || $vegetable = "rutabagas" ]]
then
  echo
  echo "Your favorite veggie is $vegetable"
  echo "Yuck!"
  echo
  break
else
  echo "Sorry. That is not on the menu."
done

exit 0