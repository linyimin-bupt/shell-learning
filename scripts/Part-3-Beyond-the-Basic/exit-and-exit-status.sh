#! /bin/bash
echo hello
echo $?         # Exit status 0 returned because command executed successfully.

laskdf         # Unrecognized command
echo $?        # Non-zero exit status returned -- command failed to execute.

echo 
exit 113       # Will return 113 to the shell
               # type "echo $?" after script terminates to verify this.
