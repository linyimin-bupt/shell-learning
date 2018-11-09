#! /bin/bash

TMOUT=3       # propmt times out at three seconds

echo "What is your favorite song?"
echo "Quickly now, you only has $TMOUT second(s) to answer!"

read song

if [ -z $song ]
then
  song="(no answer)"
fi
echo "Your favorite song is $song."