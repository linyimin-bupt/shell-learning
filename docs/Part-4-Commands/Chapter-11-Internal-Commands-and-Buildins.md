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

#### set

#### unset

#### export

#### declare,typeset

#### readonly

#### getopts

### script behavior

#### source, .(dot comamnd)

#### exit

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