#! /bin/bash

true

echo "Exit status of \"true\" = $?"     # 0

! true

echo "exit status of \"! true\" = $?"   # 1

# Note that the "!" needs a space between it and the command.

# !true leads to a "command not found" error

# The '!' operator prefixing a command invokes the Bash history mechanism.

# ======================================================================

# Preceding a _pipe_ with ! inverts the exit status returned.

ls | bogus_command      # bash: bogus_command: command not found

echo $?                 # 127

! ls | bogous_command   # bash: bogus_command: command not found

echo $0                 # 0

# Note that the ! does not change the execution of the pipe.
# Only the exit status changes.