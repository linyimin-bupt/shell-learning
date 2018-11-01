## Variable Substitution

The name of a variable is a placeholder for its value, the data it holds.Referencing(retrieving) its value is called **variable substitution**.


If variable1 is the name of a variable, then $variable1 is a reference to its value,the data item it contains.

```shell
variable1=23

echo variable1             # variable1

echo $variable1            # 23

```

Note: The $variable is actually a simplified form of ${variable}. 

In contexts where the $variable syntax causes an error, the longer form may work.

**Note:**

- Quoting a variable preserves whitespace.

```shell
hello="A B  C       D"
echo $hello             # A B C D
echo "$hello"           # A B  C       D
```
- Variable referencing disabled(escaped) by single quotes, which causes the "$" to be interpreted literally

```shell
hello=123
echo '$hello'           # $hello
```

- If there is whitespace embeded within a variable, then quotes are necessary.

```shell
other_numbers="1 2 3"
# other_number= 1 2 3   Gives an error message
```
- An uninitialized variable has "null" value -- no assigned valuie at all.


## Variable Assignment

- =

1. The assignment operator(no space before and after)

2. test operator

[Example: plain variable assignmnet](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/plain-variable-assignmnet.sh)


[Example: variable assignmnet,plain and fancy](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/variable-assignmnet-plain-fancy.sh)


## Bash Variables Are Untyped

Bash does not segregate its variables by "type".

- Essentially,Bash variables are character strings
- Bash permits arithmetic operations and comparisons on variables.
- The determining factor is whether the value of a variable contains only digits.

[Example: Integer or stirng](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/integer-or-string.sh)

## Special Variable Types

- Local variables

Variables visible only within a code block or function.

- Environmental variables

Variables that affect the behavior of the shell and user interface.

Every time a shell starts,it creates shell variables that correspond to its own environmental variables.Updating or adding new environmental variables causes the shell to update its environment,and all the shell's child processes(The commands it executes) inherit this environment.

**Note**
The space allotted to the environment is limited.Creating too many environmentalk variables or ones that use up excessive space may cause problems.

If a script sets environmental variables,they need to be "exported", reported to the environment local to the script.
**But** A script can export variables only to child processes,that is, only to commands or processes which that particular script initaies.A script invoked from the command-line cannot export variables back to the command-line environment. Child processes(which is a subprocess launched by another process(parent)) connot export variables back to the parent processes that spawned them.

- Arguments

Arguments passed to the script from the command line: $0,$1,$2,$3,......

  1. $0: The name of the script it self
  2. $1: The first argument
  3. $2: The second argument
  4. $*: All of the positional parameters, seen as a single word
  5. $@: All of the positional parameters, but each parameter is a quoted string
  6. $#: The number of positional parameters

[Example: Positional Parameters](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/positional-parameters.sh)

- Shift Command

The shift command reassigns the positional parameters, in effect shifting them to the let on notch.

$1 \<--- $2, $2 \<--- $3,$3 \<--- $4,etc.

The old $1 disappears,but $0(the script name) does not change.

[Example: Using Shift](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/using-shift.sh)
