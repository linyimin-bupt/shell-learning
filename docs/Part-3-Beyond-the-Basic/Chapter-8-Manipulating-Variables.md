## Manipulating Strings
**String length**

- ${#string}
- expr length $string

```shell
stringZ=ABCabc123ABCabc

echo ${#stringZ}
echo $(expr length $stringZ)
```

**Length of Matching Substring at Beginning of String**

- expr match "\$string" '\$substring'
- expr "\$substring" : '\$substring'

Note: substring is a regular expression.

```shell
stringZ=abcABC123ABCabc

echo $(expr match "$stringZ" 'abc[A-Z].2')      # 8

echo $(expr "$stringZ" : 'abc[A-Z].2')          # 8
```

**Index**

- expr index $string $substring

Numberical position in $string of first character in $substring that matches.

```shell
stringZ=abcABC123ABCabc
echo $(expr index "$stringZ" 'C12')       # 6(C position)

echo $(expr index "$stringZ" c1'')        # 3(# 'c' (in #3 position) matches before '1'.)
```

**Substring Extraction**

- ${string:position}

Extracts ubstring from $stringvc at $position

- ${string:position:length}

Extracts $length characters of substring from $string at $position.

If the $stirng parameters is "*" or "@", then this extracts the `positional paramenters` starting at $position.

**Substring Removeal**

- ${string#substring}

Deletes shortest match of $substring from front of $string.

- ${string##substring}

Deletes longest match of $substring from front of $string.

```shell
stringZ=abcABC123ABCabc

echo ${stringZ#a*C}         # 123ABCabc(shortest)

echo ${stringZ##a*C}        # abc(longest)

# We can parameterize the substrings

X='a*C'

echo ${tringZ#$Xs}          # 123ABCabc(shortest)
echo ${stringZ##$X}         # abc(longest)

```

- ${string%substring}

Deletes shortest match of $substring from back of $string.

- ${string%%substring}

Deletes longest match of $substring from back of $string.

```shell
stringZ=abcABC123ABCabc

echo ${stringZ%b*c}         # abcABC123ABCa(shortest)

echo ${stringZ%%b*c}        # a(longest)

```

This operator is usful for generate filenames.

[Example change suffix name](../../scripts/Part-3-Beyond-the-Basic/change-suffix-name.sh)

**Substring Replacement**

- ${string/substring/replacement}

Replace first match of $substring with $repalcement.

- ${string//substring/replacement}

Replace all matches of $susstring with $replacement.

- ${string/#substring/repalcement}

If $substring matches front end of $string, substitute $replacement for $substring.

- ${string/%substring/replacement}

If $substring matches back end of $string,substitute $repalcement for $substring.

[example: substring replacement](../../scripts/Part-3-Beyond-the-Basic/substring-replacement.sh)


## Parameter Substitution

- ${parameter}

May be use to concatenating variables with strings.

```shell
your_id=${USER}-on-${HOSTNAME}
echo "$your_id"
```

- ${parameter-default}, ${parameter:-default}

If parameter not set,use default.

```shell
var1=1
var2=2
# var3 is unset

echo ${var1-$var2}       # 1
echo ${var3-$var2}       # 2
echo ${var3-$var1}       # 1
```

**Note**: ${parameter-default} and ${parameter:-default} are almost equivalent.The extra: makes a difference only when `parameter` has been declared,but is null.

[example default value](../../scripts/Part-3-Beyond-the-Basic/default-value.sh)

- ${parameter=default}, ${parameter:=default}

If parameter not set,set it to default.


```shell
echo ${var:=123}      # 123
echo ${var:=456}      # 456
```
**Note**: ${parameter=default} and ${parameter:=default} are almost equivalent.The extra: makes a difference only when `parameter` has been declared,but is null.

- ${parameter?err_msg}, ${parameter:?err_msg}

If paramete set,use it,else print `err_msg` and abort the script with an `exit status` of 1.

**Note**:Both forms nearly equivalent.The: makes a difference only when parameter has been declared and is null, as above.


- \${!varprefix*},\${!varprefix@}

Matches names of all previously declared variables beginning with `varprefix`

```shell
xyz23=whatever
xyz24=

a=${!xyz*}         #  Expands to *names* of declared variables
echo "a = $a"      #  a = xyz23 xyz24
a=${!xyz@}         #  Same as above.
echo "a = $a"      #  a = xyz23 xyz24
```
