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

[Example plain variable assignmnet](../../script/Chapter-3-Introduction-to-Variables-and-Parameters/plain-variable-assignmnet.sh)
[Example variable assignmnet,plain and fancy](../../script/Chapter-3-Introduction-to-Variables-and-Parameters/variable-assignmnet-plain-fancy.sh)


## Bash Variables Are Untyped

## Special Variable Types