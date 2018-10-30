# 10 Useful Tips for Writing Effective Bash Scripts in Linux

From [10 Useful Tips for Writing Effective Bash Scripts in Linux](https://www.tecmint.com/useful-tips-for-writing-bash-scripts-in-linux/)

1. Always Use Comments in Scripts

This is a recommanded pratice which is not only applied to shell scripting but all other kinds of programming.Writing comments in a script helps you or some else going through your script understand what the different parts of the script do.

2. Make a Script exit When Fails

Sometimes bash may continue to execute a script when a certain command fails, thus affecting the rest of the script(may eventually result in logical errors).Use the line below to exit a script when a command fails:

```shell
# let script exit if a command fails

set -o errexit

# The same as set -e
```

3. Make a Script exit When Bash Uses Undeclared Variable

Bash may also try to use an undeclared script which could cause a logical error. Therefore use the following line to instruct bash to exit a script when it attempts to use an undeclared variable:

```shell

# Let script exit if an unsed variable is used

set -o nounset

# The same as set -u

```

4. Use Double Quotes to Reference Variables

Using double quotes while referencing(Using a value of a variable) helps to prevent word spliting(regarding whitspace) and unnecessary globbing(recognizing and expanding wildcards).

5. Use functions in Scripts

Except for very small scripts(with a few lines of code), always remember to use functions to mondularize your code and make scripts more reable and reusable.

```shell
function check_root() {
  command1;
  command2;
}

check_root(){
  command1;
  command2;
}
```

6. Use `=` instead of `==` for string Comparision

Note that `==` is a synonym for `=`, therefore only use single `=` for string comparisons.

```shell
value1="tecmint.com"
value2="fossmint.com"

if [ "$value1" = "$value2" ] then
  command1
fi
```

7. Use `$(command)`  instead of legacy `\`command\`` for Substitution

COmamnd substitution repalces a command with its output.Use `$(command)` instead of backquotes ``\command\`` for command substitution.

```shell
user=`echo "$UID"`

user=$(echo "$UID")

```

8. Use Read-only to Declare Static Variables

A static variable doesn't change; its value can not be altered once it's define in a script

```shell
readonly passwd_file="/etc/passwd"
readonly group_file="/etc/group"
```

9. Use Uppercase Names for ENVIRONMENT Variables and Lowercase for Custom Variables

All bash environment variales are named with uppercase letters, therefore use lowercase letters to name your custom variables to adviod variable name conflicts.

10. Always Perform Debugging for Long Scripts

If you are writing bash script with thousands of lines of code,finding errors may become a nightmare. To easily fix things before executing a script,perform some debugging.Master this tip by reading through the guides provide below.

- [How To Enable Shell Script Debugging Mode in Linux](https://www.tecmint.com/enable-shell-debug-mode-linux/)
- [How to Perform Syntax Checking Debugging Mode in Shell Scripts](https://www.tecmint.com/check-syntax-in-shell-script/)
- [How to Trace Execution of Commands in Shell Script with Shell Tracing](https://www.tecmint.com/trace-shell-script-execution-in-linux/) 