## Command Substitution

`Command substitution` reassigns the output of a command or even multiple commands;it literally plugs the command output into another context.

The classic form of command substitution uses `backquotes`(`...`).Command within backquotes generates command-line text.

```shell
script_name=`basename $0`
echo "The name of this script is $script_name."

```

### Roles of Command Substitution

- Arguments to another command
- To set a variable
- For generating the argument list in a `for` loop

### Important things

- Command substitution may result in `word splitting`
- Command substitution can remove tailing newlines.
- Using `echo` to output an `unquoted` varible set with command substitution removes trailing newlines characters from the output of the reassigned command(s)
- There are differences between `unquoted` and `quoted` avariable

