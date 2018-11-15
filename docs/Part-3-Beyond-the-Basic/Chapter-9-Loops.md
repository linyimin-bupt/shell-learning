## Loops

A loop is a block of code that iterates a list of comamnds as long as the `loop control condition` is true.

### for loops

- for arg in [list]

This is the basic looping contruct.It differs significantly from its C counterpart.

```shell
for args in [list]
do
  command(s)
done
```

[Example simple for loops](../../scripts/Part-3-Beyond-the-Basic/simple-for-loops.sh)

[Example for loop with two parameters in each [list] element](../../scripts/Part-3-Beyond-the-Basic/two-parameters-in-each-elements.sh)

[Eaxmple Fileinfo: operating on a file list contained in a variable](../../scripts/Part-3-Beyond-the-Basic/operating-a-file-list-contained-in-a-variable.sh)

[Example operating on a parameterized file list](../../scripts/Part-3-Beyond-the-Basic/operating-on-a-parameterized-file-list.sh)

**Note**： If the list in a `for loop` contains wild cards(* and ?) used in filename expansion, then `globbing` takes place.And operates files only in $PWD.

- while

This construct tests for a condition as the top of a loop, and keeps looping as long as that condition is true(return a 0 exit status).In contrast to a `for loop`, a `while loop` finds use in situations where the number of loop repetitions is not known beforehand.

```shell
while [ condition ]
do
  comamnd(s)
done
```

- until

This construct tests for a condition at the top of a loop,and keeps looping as long as that condition is `false` (opposite of `while` loop)

```shell
until [ condition-is-true ]
do
  command(s)
done
```


## Nested Loops
## Loops Control
## Testing and Branching