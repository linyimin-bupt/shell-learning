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

- while

This construct tests for a condition as the top of a loop, and keeps looping as long as that condition is true(return a 0 exit status).In contrast to a `for loop`, a `while loop` finds use in situations where the number of loop repetitions is not known beforehand.

```shell
while [ condition ]
do
  comamnd(s)
done
```

- until

This construct tests for a condition at the top of a loop,and keeps looping as long as that condition is `false`(opposite of `while` loop)

```shell
until [ condition-is-true ]
do
  command(s)
done
```


## Nested Loops
## Loops Control
## Testing and Branching