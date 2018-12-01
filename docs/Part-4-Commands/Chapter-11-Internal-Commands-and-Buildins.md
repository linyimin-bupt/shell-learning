## Internal Commands and Buildtins

A builtin is a **command** contained within the Bash toolset,literally `built in`.

When a command or the shell itself initiates(or spawns) a new subprocess to carry out a task,this is call **forking**.This new process is ths child, and the process the forked it off is the parent.While the child process is doing its work,the parent process is still executing.

**Note**: While a parent process get the process ID of the child process, and can thus pass arguments to it, the reverse is not true.

[Example A script that spwns multiple instances of itself](../../scripts/Part-4-Commands/script-spawns-multiple-instances-of-itself.sh)


### I/O

#### echo

prints (to stdout) an expression or a variable.

- An `echo` can be used to feed a sequence of commands down a pipe.

```shell
if echo "$VAR" | grep -q txt
then
  echo "$VAR contains the substring \"txt\""
fi
```

- An `echo`, in combination with `command substitution` can set a variable.

```shell

a=`echo "Hello" | tr A-Z a-z`

```

Be aware that **echo `command`** deletes any linefeeds that the output of command generate.

the `$IFS` (internal Field separator) variable normally contains \n as one of its set of `whitespace` characters.Bash therefore splits the output of command at linefeeds into arguments to `echo`. Then `echo` outputs these arguments,separated by spaces.

#### printf

The `Print`, formatted print,command is an enhanced `echo`,It is a limited variant of the C language `printf()` library function, and its syntax is somewhat different.

print format-string... parameter...

[Example printf in action](../../scripts/Part-4-Commands/printf-in-action.sh)

#### read

"Reads" the value of a variable from stdin, that is, interactively fetches input from the keyboard.The `-a` option lets `read` get array variables.

A `read` without an associated variable assigns its input to the dedicated variable `$REPLY`

[Example Variable assignment, using read](../../scripts/Part-4-Commands/variable-assignment-using-read.sh)

### Filesystem

#### cd 

The `cd` change directory command finds use in scripts where execution of a commnad requires being in a specified directory.

#### pwd

Print Working Directory. This gives the user's(r script'so current directory. The effect is identical to reading the value of the builtin variable `#PWD`)

### Variables

#### let

THe `let` command carries out arithmetic operations on variables. In many cases, it functions as a less complex version of `expr`.

[Example letting let command do arithmetic](../../scripts/letting-let-do-arithmetic.sh)

**Note**: The `let` command can, in certain contexts, return a surpurising `exit status`

[Example let command return a surprising exit status](../../scripts/let-command-return-a-surprising-exit-status.sh)

#### eval

eval arg1 [arg2] [arg3] ... [argN]

Combines the arguments in an expression or list of expressions and evaluates them. Any variables whitin the expression are expanded

#### set

The `set` command changes the value of internal script variables/options.

**Usage**:

- To toggle `option flags` which help determine the behavior of the script.
- To reset the `opsitional parameters` that a script sees as the result of a command(set \`command\`),and the script can then parse the `fields` of the command uotput.

**Note**:

- Invoking `set` without any optiona or arguments simply lists all the `environmental` and other variables that have been initialized.
- Using `set` with the `--` options explicitly assigns the contents of a variable to the positional parameters.If no variable follow the `--` it unset the positional parameters.

[Example Using et with positional parameters](../../scripts/Part-4-Commands/using-set-with-positional-parameters.sh)


#### unset

The `unset` command deletes a shell variable, effectively setting it to null.Note that this command does not affect positional parameters.

**Note**: In most contexts, an undeclared variable and one that has been unset are equivalent.

[Example Unsetting a variable](../../scripts/Part-4-Commands/unsetting-a-variable.sh)

#### export

The `export` command makes available variables to all child processes of the running script or shell.One import use of the `export` command is in `startup files`, to initialize and make accessible `environmental variables` to subsequent user processes.

#### declare,typeset

The `declare` and `typeset` commands specify and/or restrict properties of variables.

#### readonly

Same as `declare -r`, set a variable as read-only,or,in effect, as a constatnt. Attempts to change the variable fail with an error message.

#### getopts

This power tool parses command-line arguments passed to the script. It permits passing and  concatenating multiple options and associated arguments to a script.

The `getopts` contruct uses two implicit variables. **$OPTIND** is the argument pointer(option index) and **$OPTARG**(option argument) the(optional) argument attached to an option.A colon following the option name in the declaration tags that option as having an associated argument.

A `getopts` construct usually comes packaged in a `while loop`, which processes the options and arguments one at a time, then increments the implicit $OPTIND variable to point to the next.

**Note**:

- The arguments passed from the command-line to the script must be proceded by a dash(-). It is the prefixed - that lets `getopts` recognize command-line arguments as options.In fact,`getopts` will not process arguments without the prefixed -,and will terminate option procssing at the first argument encountered lacking them.

- The `getopts` template differs slightly from the standard `while loop`, in that it lacks condition brackets.

- The `getopts` construct is a highly functional replacement for the traditional `getopt` external command.

### script behavior

#### source, .(dot comamnd)

This command, when invoked from a command-line, executes a script. Within a script, a `source file-name` loads the file file-name. Sourcing a file(dot command) import code into the script, appending to the script(same effect as the #include directive in a C program).The net result is the same as if the "sourced" lines of code were physically present in the body of the script.This is useful in situations when multiple scripts use a common data file or function library.


#### exit

Unconditionally terminates a script.The `exit` command may optionally take an integer argument, which is returned to the sshell as the `exit status` of the script. It is good practice to end all but the simplest scripts with an `exit 0`, indicating a successful run.

**Note**:

- If a script terminates with an `exit` lacking an argument,the exit status of the script is the last command executed in the script.This is equivalent to an `exit $?`

- An `exit` command may also be used to terminate a sushell.

#### exec

#### shopt

#### caller

### Commands

#### true

#### false

#### type [cmd]

#### hash [cmd]

#### bind

#### help