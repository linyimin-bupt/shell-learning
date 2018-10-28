## Special Characters

- Has a meaning beyond its literal meaning.
- meta-meaning: The meaning of a term or expression on a higher level of abstraction.

### Special Characters Found In Scripts and ElseWhere

- \#

Comments. Lines beginning with a # (with the exception of #!) are comments and will not be executed.

- ;

Command separator. Permits putting two or more commands on the same line.

- ;;

Terminator in a `case` option [double semicolon]

```shell
case "$variable" in
  abc)  echo "\$variable = abc" ;;
  xyz)  echo "\$variable = xyz" ;;
esac 
```

- .

  - "dot" command. Equivalent to `source`
  - "dot" as a component of a filename.
    - When working with a filenames, a leading dot is the prefix of a "hidden" file, a file that an `ls` will not normally show
      ```shell
        touch .hidden-file
      ```
    - When considering directory names, a single dot represents the current working directory, and two dots denote the parent directory

- "

partial quoting [double quote]. "STRING" preserves (from interpretation) most of the sepecial characters within STRNG.

- '

full quote [single quote] 'STRNG' preserves all apecial characters within STRING.

- \

escape [backslash]. A quoting mechanism for single characters.

- /

Filename path separator [forward slash].Separates the components of a filename

- `

Command substitution. The \`command \` construct makes available the output of command for assignment to a variable.

- :

null command[colon]. This is ths shell equivalent of a "NOP"(no op, a do-nothing operation ).It may be considered a synonym for the shell builtin `true`
```shell
:
echo $?     # 0
```

**Endless loop**
```shell
while :
do 
  operation-1
  operation-2
  ...
  operation-n
done

# Same as:
# while true
# do
#   ...
# done
```

**Placeholder in if/then test**
```shell
if condition
then
  :           # Do nothing and branch ahead
else
  take-some-action
fi
```

**Provide a placeholder where a binary operation is expected** 
```shell
: ${username=`whoami`}
# ":" necessary because otherwise Bash attempts to interpret "${username=`whoami`}"
#+ as a command
```
**Variable expansion / substring replacement**

```shell
var='123456'
echo ${var:2}   ## 3456
```

**In combnination with > redirection operator**
turncates a file to zero length, without changing its permissions.If the file did not previously exist, creates it.
```shell
: > data.xxx

# Same effect as cat /dev/null > data.xxx
```

- ！
  - reverse the sense of s test or exits status
  - In a different context, the ! also apear in `indirect variable references`
  - In yet another,from the command line,the ! invokes the Bash history mechanism

- \*
wild card
  - Matches every filename in a given directory.
  ```shell
    echo *
    # print all file or directory names
  ```
  - Represents any number(or zero) characters in a regular expression.
  - Arithmetic operator(** double * can represent the exponentiation operator)
  ```shell
    let x=5**3      # Same as 5*5*5
    echo "x = $x"   # 125
  ```
- ?
  - test operator
  ```shell
  var1=12
  ((var0 = var1<98?9:21))
  echo "var0 = $var0"     # var0 = 9
  ```
  - wild card, serves as a single-character in a regular expression

- $
  - variable substitution (contents of a variable)
    A $ prefixing a variable name indicates the value the variable holds
  ```shell
  var1=5
  echo $var1    # 5
  ```
  - end-of-line.
    In a regular expression, a "$" addresses the `end of line` of text.

- ${}

Variable substitution. Same as $parameter, value of the variable parameter. In certain contexts, only the less ambiguous `${parameter}form work

- $*

Positional parameters: All of the positional parameters, seen as a single word

- $@ 

Positional parameters: Each parameter is a quoted string,that is, the parameters are pass on intact,without interpretion or expansion.This means, among other things,the each parameter in the argument list is seen as a seperate word.

- $#

Number of command-line arguments or positional parameters.

- $?

Exit status variable.

- $$

process ID variable.

- ()

command group
```shell
(a=hello; echo $a)
```

array initialization

```shell
Array=(element1 element2 element3)
```

- {xxx,yyy,zzz,...}

brace expansion

```shell
echo \"{These,words,are,quoted}\"

## "These" "words" "are" "quoted"

cat {file1,file2,file3} > combined-file
## Concatenates the files file1,file2 and file3 into combined-file 

cp file1.{txt, backup}

## Copies "file1.txt" to "file1.backup"
```

- {a..z}

Extended Brace expansion.

```shell
echo {a..d}       ## a b c d

#+ Echos characters between a and d

echo {1..5}       ## 1 2 3 4 5

#+ Echos characters between 1 and 5
```

- {}

Block of code.**Note: The variable inside a code block remain visible to the remainder of the script**
```shell
a=123
{ a=321; }
echo "a = $a"   # a = 321
```

