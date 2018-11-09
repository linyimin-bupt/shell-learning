## Exit and Exit Status

- The `exit` command terminates a script and return a value, which is available to the script's parent process.
- Every command returns an exit status.A successful command returns 0, while an unsuccesssful one reutrns a non-zero value.



**Note**

- When a script ends with an `exit` that has no parameter,the exit status of the script is the exit status of the last command executed in the script(previous to the `exit`)
```shell
#! /bin/bash

COMMAND_1
...
COMMAND_LAST

# Will exit with status of last command

exit
```

- The equivalent of a bare `exit` is `exit $?` or even just omitting the `exit`


- $? reads the exit code of the last command executed.[example 1: exit and exit status](../../scripts/Part-2-Basic/exit-and-exit-status.sh)


- After a function returns,$? gives the exit status of the alst command executed in the function.

- Following the execution of a `pipe`, a $? gives the exit status of the last command executed.

- Use ! to negate a condition [Example2: Negeting a condition using](../../scripts/Part-2-Basic/negating-a-condition-using-!.sh)
