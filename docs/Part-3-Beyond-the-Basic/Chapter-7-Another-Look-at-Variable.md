## Internal Variables

**Bulitin variables**

variables affecting bash script behavior.

- $BASH

The path to the Bash binary itself.

- $BASH_SUBSHELL

A vbariable indicateing the subshell level.

- $BASH_VERSION

The version of Bash installed on the system.

- $FUNCNAME

Name of the current function

```shell
xyz123 () {
  echo "$FUNCNAME now executing."     # xyz123 now executing.
}

xyz123

echo "FUNCNAME=$FUNCNAME"
```

- $GROUPS

Groups current user belongs to

- $HONE

Home directory of the user, usually /home/username

- $HOSTNAME

The `hostname` command assigns the system host name at bootup in an init script.

- $HOSTTYPE

host type, identifies the system hardware.

- $MACHTYPE

Identifies the system hardware.

- $IFS

Internal field separator.

This variable determines how Bash recognizes fields, or word boundaries,when it interprets character strings.

$IFS defaults to `whitespace`(space, tab, and newline),but may be changed.

[Example 1: $IFS and whitespace](../../scripts/Part-3-Beyond-the-Basic/IFS-and-Whitespace.sh)

- $PATH

Path to binaries.
When given a command,the shell automatically does a hash table search on the directories listed in the `path` for the executable.

- $PIPESTATUS

`Array`.Variables holding `exit status`(es) of last executed foreground pipe.

**Note**: $PIPESTATUS is a "volatile" variable.It needs to be captured immediately after the pipe in question,before any after comamnd intervenes.

- $PPID

The $PPID of a process is the process ID(pid) of its parent process.

- $PROMPT_COMMAND

A variable hoding a command to be executed just before the primary prompt,$PS1 is to be displayed.

- $PS1

The main prompt.

- $PWD

The working directory(the directory you are in at the time)

- $REPLY

The default value when a variable is not supplied to `read`.

[Example 2: reply](../../scripts/Part-3-Beyond-the-Basic/reply.sh)

- $SECONDS

The number of seconds the script has been running.

- $SHLVL

Shell level, how deeply Bash is nested.

- $TMOUT

If the $TMOUT environmenttal variable is set to a non-zero value time,then the shell promt will time out after $time seconds.This will cause a logout.

- $UID

User ID number.

Current user's real id. And $UID is a readonly variable.root has $UID 0.

**Positional Parameters**
- $0, $1, $2, $3

Positional parameters, pass from command line to script.
- $#

The number of command-line arguments or positional parameters.

- $*

All of positional parameters, seen as a single word.("$*") must be quoted.

- $@

Same as $*, but each parameter is a quoted string,that is, the parameters are passed on intact,without interpretation or extendsion.This means, among other strings,that each parameter in the argument list is seen as a separate wrod.

- $-

Flags passed to script.

- $!

PID of last job run in background.

- $_

Special variable set to final argument of previous command executed.

- $?

`exit status` of a command, function, or the script itself.

- \$$

Process ID(PID) of the script itself.
