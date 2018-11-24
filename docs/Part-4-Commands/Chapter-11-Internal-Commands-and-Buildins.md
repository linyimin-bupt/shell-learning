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

#### read

### Filesystem

#### cd 

#### pwd

#### pushd, popd, dirs

### Variables

#### let

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