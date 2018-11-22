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

```shell
COMMAND `echo a b`    # 2 args: a and b

COMMAND "`echo a b`"  # 1 arg: "a b"

COMMAND `echo`        # no arg

COMMAND "`echo`"      # one empty arg
```

- Command substitution can remove tailing newlines.


- Using `echo` to output an `unquoted` varible set with command substitution removes trailing newlines characters from the output of the reassigned command(s)

```shell
dir_listing=`ls -l`

echo $dir_listing     # unquoted

# total 3 -rw-rw-r-- 1 bozo bozo 30 May 13 17:15 1.txt -rw-rw-r-- 1 bozo
# bozo 51 May 15 20:57 t2.sh -rwxr-xr-x 1 bozo bozo 217 Mar 5 21:13 wi.sh

echo "$dir_listing"   # quoted
# -rw-rw-r--    1 bozo       30 May 13 17:15 1.txt
# -rw-rw-r--    1 bozo       51 May 15 20:57 t2.sh
# -rwxr-xr-x    1 bozo      217 Mar  5 21:13 wi.sh

```

- There are differences between `unquoted` and `quoted` avariable
- Commad substitution even permits setting a variale to the contents of a file, using either `redirection` or the `cat` command.

```shell
variable1=`<file1`    # Set "variable1" to contents of "file1"
variable2=`cat file2` # Set "variable2" to contents of "file2"

# It is not necessary to explicitly assign a variable

echo " <$0"     # Echoes the script itself to stdout.
```

**Note**: Dont set a variable to the contents of a long text file unless you have a very good reason for doing so.


[Example Generating a variable from a loop](../../scripts/Part-3-Beyond-the-Basic/generating-a-variable-from-a-loop.sh)