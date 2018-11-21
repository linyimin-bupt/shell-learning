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

[Example missing in list in a for loop](../../scripts/Part-3-Beyond-the-Basic/mssing-list-in-a-loop.sh) 

[Example generating the list in a for loop with command substitution](../../scripts/Part-3-Beyond-the-Basic/generating-list-with-command-substitution.sh)

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

A nested loop is a loop within a loop, an inner loop within the body of an outer one.

## Loops Control

### Commands affecting loop behavior

- break and continue

THe `break` and `continue` loop control commands corresond exactly to their counterparts in other programming languages.The `break` command terminates the loop(breaks out of it),while `continue` causes a jump to the next iteration of the loop skipping all the remaining commands in that particular loop cycle. 

[Example Effects of break and continue in a loop](../../scripts/Part-3-Beyond-the-Basic/break-and-continue-in-a-loop.sh)

## Testing and Branching

The `case` and `select` construct are technically not loop, since they dont iterate the excution of a code block.Like loops, however, they direct program flow according to conditions at the top or bottom of the block.

- case(in)/esac

The  `case` construct is the shell script analog to `switch` in C/C++.It permits branching to one of a number of code blocks,depending on condition tests.It serves as a kind of shorthand for multiple if/then/else statements and is an appropriate tool for creating menus.

```shell
case  "$variable" in
"$condiiotn1")
  command...
;;;

"$condiiotn2")
  command...
;;;

esac
```

[Eaxmple Using case](../../scripts/Part-3-Beyond-the-Basic/using-case.sh)

- select

The `select` construct,adpoted from the Korn Shell, is yet another tool for building menus.

```shell
select variable [in list]
do
  command...
  break
done
```

This prompts user to enter one of the choices presented in the variable list.**Note**: `select` uses the $PS3 prompt(#?) by default,but this may be changed.

**Note**:

- Quoting the variables is not mandatory,since word spliting does not take place.
- Each test ends with a right paren )
- Each condition block ends with a `double semicolon`
- If a condition tests true,then the associated commands execute and the `case` block terminates.
- The entire `case` block ends with an `esac`

