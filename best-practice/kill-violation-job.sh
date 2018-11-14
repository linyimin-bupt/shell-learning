#! /bin/bash

set -e

if [ $UID -ne 0 ]
then
  echo 'You are not root, permission denied.'
  exit 1
fi
# PID of process occupies multiple GPUs
PIDS=$(nvidia-smi --query-compute-apps=pid --format=csv,noheader | sort | uniq -d)

for pid in $PIDS
do
  kill -9 $pid
done
