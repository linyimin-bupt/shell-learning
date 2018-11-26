## type

The `type` command is used to display the type of the specified command and determine whether the given instruction is an internal or external command.


### types of command

- alias: The other name of command
- keyword
- function
- builtin: internal command of shell
- file
- unfound: Not found

### Usage

```shell
type (options) (parameters)
```

### Options

\-p: If the instruction is an external command, display the absolute path of the command.

### Parameter

instruction: The instruction to display the type.

### Example

```shell
[root@localhost ~]# type ls
ls is aliased to `ls --color=tty'

[root@localhost ~]# type cd
cd is a shell builtin

[root@localhost ~]# type date
date is /bin/date

[root@localhost ~]# type mysql
mysql is /usr/bin/mysql

[root@localhost ~]# type nginx
-bash: type: nginx: not found

[root@localhost ~]# type if
if is a shell keyword

[root@localhost ~]# type which
which is aliased to `alias | /usr/bin/which --tty-only --read-alias --show-dot --show-tilde'

[root@localhost ~]# type -a cd
cd is a shell builtin

[root@localhost ~]# type -a grep
grep is /bin/grep

```