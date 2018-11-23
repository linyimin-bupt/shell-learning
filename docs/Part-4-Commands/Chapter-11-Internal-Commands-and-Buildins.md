## Internal Commands and Buildtins

A builtin is a **command** contained within the Bash toolset,literally `built in`.

When a command or the shell itself initiates(or spawns) a new subprocess to carry out a task,this is call **forking**.This new process is ths child, and the process the forked it off is the parent.While the child process is doing its work,the parent process is still executing.

**Note**: While a parent process get the process ID of the child process, and can thus pass arguments to it, the reverse is not true.

[Example A script that spwns multiple instances of itself](../../scripts/Part-4-Commands/script-spawns-multiple-instances-of-itself.sh)