#! /bin/bash

# ---------------- character device --------------------------
device0="/dev/ttyS1"        # PCMCIA modem card.
if [ -c "$device0" ]
then
  echo "$device0 is a character device"
else
  echo "$device0 is not a character device"
fi

# ---------------- block device ------------------------------

device0="/dev/sda2"        # / (root directory)
if [ -b "$device0" ]
then
  echo "$device0 is a block device"
else
  echo "$device0 is not a block device"
fi

# ---------------- pipe device -------------------------------

function show_input_type() {
  [ -p /dev/fd/0 ] && echo PIPE || echo STDIN
}

show_input_type "Input"           # STDIN
echo "Input" | show_input_type    # PIPE
