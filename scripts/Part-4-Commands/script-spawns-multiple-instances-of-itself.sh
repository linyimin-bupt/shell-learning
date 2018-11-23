#! /bin/bash

PIDS=$(pidof sh $0)     # Process IDs of the various instances of this script

P_array=( $PIDS )       # Put them into an array (IFS and array initiate)

echo $PIDS              # Show process Ids of parent and child processes.

let "instances = ${#P_array[*]} - 1"

echo "$instances instance(s) of this script running."

echo "[Hit Ctrl-C to exit]";echo

sleep 1

/bin/bash $0                   # Play it again

exit 0