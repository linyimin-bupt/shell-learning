# Tests

Every reasonably complete programming language can test for a condition, then act according to the result of the test.Bash Supports test for a condition by providing:

- `test` command
- Various bracket and parenthesis operators
- `if/then` construct.

## Test Constructs

- An `if/then` construct tests whether the `exit status` of a list command is 0(since 0 means "success" by Unix convention)
- A dedicated command called `[`. It is a synonym for `test` command and a builtin for efficiency reasons.
- `[[]]` which extends test command and performs comparisions in a manner more familiarto programmers from other languages.For example, Bash sees `[[ $a -lg $b ]]` as a single element,which returns a exit status.
- The `((...))` and `let` constructs return an `exit status`,according to whether the arithmetic expression they evaluate expand to a non-zero value. For Example:

```shell
(( 0 && 1 ))      # Logical AND
echo $?           # 1

let "num=(( 0 && 1 ))"
echo $num         # 0

echo $?           # 1

(( 200 || 11 ))   # Logical OR
echo $?           # 0

let "num = (( 200 || 11 ))"
echo $num         # 1

let "num = (( 200 || 11 ))"
echo $?           # 0

(( 200 | 11 ))    # Bitwise OR
echo $?           # 0

let "num=(( 200 | 11 ))"
echo $num         # 203

let "num=(( 200 | 11 ))"
echo $?           # 0

```

**Note**: The `let` construct returns the same exit status as the double-parentheses arithmetic expansion.
But wo should note that: the exit status of an arithmetic expression is not an error value.

### if/elxe statement

An `if` can test any command, not just conditions enclosed within brackets. For example:

```shell
if cmp a b &> /dev/null           # Supress output
then
  echo "Files a and b are identical."
else
  echo "Files a and b differ."
fi
```

The very useful 'if-grep' construct

```shell
if grep -q Bash file
# The '-q' option to grep suppresses output.
then
  echo "file contains at least one occurrence of Bash."
fi
```

### What is trth

- 0 is true
- 1 is true
- -1 is true
- null is false
- random string is true
- Uninitialized variable is false
- Null variable is false

**Note**:
- The `if test condition-true` construct is the exact equivalent of `if [ condition-true ]`.
- The [[]] construct is the more versatile Bash version of []
- Following an `if`, neither the `test` command nor the test brackets([] or [[]]) are strictly necessary.
- THe `((...))` construct expands and evaluates an arithmetic expression.If the expression evaluates as zero, it returns an `exit status` of 1, or "false".A non-zero expression return s an exit status of 0. or "true".

## File test operators

Return true if ...

- \-e

file exits

- \-f
file is a regular file

- \-s

file is not zero size

- \-d

file is a directory

- \-b

file is a block device

```shell
device0="/dev/sda2"        # / (root directory)
if [ -c "$device0" ]
then
  echo "$device0 is a block device"
else
  echo "$device0 is not a block device"
fi
```

- \-c

file is a character device

```shell
device0="/dev/ttyS1"        # PCMCIA modem card.
if [ -c "$device0" ]
then
  echo "$device0 is a character device"
else
  echo "$device0 is not a character device"
fi
```

- \-p

file is a pipe

```shell
function shoe_input_type() {
  [ -p /dev/fd/0 ] && echo PIPE || echo STDIN
}

show_input_type "Input"           # STDIN
echo "Input" | show_input_type    # PIPE
```

**note**:

fd - file descriptor files

The /dev/fd file system is a pseudo-file system layered beneath the Virtual File System(VFS).The file descriptor files(fd*) are those files that are accessible through file descriptors. The file descriptors use naming convention /dev/fd/0, /dev/fd/1, /dev/fd/2 and so on up to any number.

- \-h

file is a symbolic link

- \-L

file is a symbolic link

- \-S

file is a socket

- \-r

file has read permission(for the user running the test)

- \-w

file has write permission

- \-x

file has execute permission

- \-O

you are owner of file

- f1 -nt f2

file f1 is newer than f2

- f1 -ot f2

file f1 is older than f2

------

[Example: file test operator](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/file-test-operator.sh)

**Concept**:

- device file

In Unix-like operating system, a device file is an interface to a device driver that appears in file system as if it were an ordinary file. Allow application programs to interact with a device by using its device driver via standard input/output system calls.

- character device

Character device provide unbuffered, direct access to the hardware device.But they do not necessarily allow programs to read or write single characters at a time.

- block device

Block device provide buffered access to hardware device, and provide some abstration from their specifics.Unlike charater devices, block devices will always allow the programmer to read or write a block of any size(including single characters/bytes) and any alignment.

**downside**:

1. Programmers do not know hwo long it will take before written data is passed from the kernel's buffers to the actual device for block devices are buffered.
2. If the same hardware exposes both character and block devices,there is a risk of data corruption due to clients using the cahrater device being unaware of changes made in the buffers of the block devices

## Other comparison Operator

A binary comparison operator compares two variables or quantities.Note that integer and string comparison use a different set of operators.

### Integer comparison

- \-eq

is equal to

`if [ "$a" -eq "$b" ]`

- \-ne

is not equal to

`if [ "$a" -ne "$b" ]`


- \-gt

is greater than 

`if [ "$a" -gt "$b" ]`

- \-ge

is greater than or equal to

`if [ "$a" -ge "$b" ]`


- \-lt

is less than

`if [ "$a" -lt "$b" ]`

- \-le

is less than or equal to

`if [ "$a" -le "$b" ]`


- <

is less than(within double parenthess)

`(("$a" < "$b"))`

- <=

is less than or equal to(within double parenthess)

`(("$a" <= "$b"))`

- \>

is greater than(within double parenthess)

`(("$a" > "$b"))`


- \>=

is greater than or equal to(within double parenthess)

`(("$a" >= "$b"))`

### String comparison

- =

is equal to

`if [ "$a" = "$b" ]`

- ==

is equal to(A synonym for =)

`if [ "$a" == "$b" ]`


- !=

is not equal to

`if [ "$a" != "$b" ]`

- <

is less than, in `ASCII` alphabetical order.

`if [ "$a" \< "$b" ]`

`if [[ "$a" < "$b" ]]`

- \>

is greater than, in `ASCII` alphabetical order.

`if [ "$a" \> "$b" ]`

`if [[ "$a" > "$b" ]]`


- \-z

string is null,that is, has zero length.

`if [ -z "$a" ]`

- \-n

string is not null

`if [ -n "$a" ]`

### Compound comparison

- \-a

Logical and

exp1 -a exp2 returns true if both exp1 and exp2 are true.

- &&

Logical and(within a double parenthess)

- \-o

Logical or

exp1 -o exp2 returns true if either exp1 or exp2 is true.

- ||

Logical or(within a double parenthess)

[Example 1: Arithmetic and string comparison](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/arithmetic-and-string-comparison.sh)

[Example 2: Testing whether a string is null](../../scripts/Chapter-3-Introduction-to-Variables-and-Parameters/testing-whether-a-string-is-null.sh)