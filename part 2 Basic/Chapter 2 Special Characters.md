## Special Characters

- Has a meaning beyond its literal meaning.
- meta-meaning: The meaning of a term or expression on a higher level of abstraction.

### Special Characters Found In Scripts and ElseWhere

- #

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