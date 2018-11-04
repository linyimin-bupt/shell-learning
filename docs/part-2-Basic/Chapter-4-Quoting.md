## Quoting Variables

- Enclose variable name in double quotes, which can prevent reinterpretation of all special characters within the quoted string --except $, `(backquote), and \\(escape).
- Prevennt word spliting.An argument enclosed in double quotes presents itself as a single word, even if it contains whitespace separators.

```shell
LIST="one two three"

for a in $LIST        # Splits variable in parts at whitespace.
do
  echo "$a"
done

# one
# two
# three

for a in "$LIST"      # Preserves whitespace in a single variable
do
  echo $a
done

# one two three

```

A more complexity example

```shell
variable1="a variable containing five words"

COMMAND This is $variable1      # Executes COMMAND with 7 arguments:
# "This" "is" "a" "variable" "ccontaining" "five" "words"

COMMAND "This is $variable1"    # Executes COMMAND with 1 argument:
# "This is a variable containing five words"

variable2=""        # Empty
COMMAND $variable2 $variable2 $variable2

# Execute COMMAND with no arguments

COMMAND "$variable2" "$variable2" "$variable2"

# Executes COMMAND with 3 empty arguments

COMMAND "$variable2 $variable2 $variable2"

# Executes COMMAND with 1 argument (2 spaces)

```

Note: 
- Single quotes (') opreate similarly to double quotes, but do not permit referencing variables, since the special meaning of $ is turned of.
- Consider single quotes("full quoting") to be a stricter method of quoting than double quotes("partial quoting")

IFS: Short for Internal Field Seprator

The shell uses the value stored in IFS, which is the space, tab, and newline characters by default, to delimit words for the read and set commands, when parsing output from command substitution, and when performing variable substitution.

[More detail](https://blog.csdn.net/whuslei/article/details/7187639) 

## Escaping

Escaping is a method of quoting single characters. The escape(\\) preceding a character tells the shell to interpret that character literally.

**Note**:

With certain commands and utilities, such as `echo` and `sed`, escaping a character may have the opposite effect-it can toggle on a special meaning for that character.

Special meanings of certain escaped characters

used with `echo` and `sed`

- \n

means newline

- \r

means return

- \t

means tab

- \v

means vertical tab

- \b

means backspace

- \a 

means alert (beep or flash)