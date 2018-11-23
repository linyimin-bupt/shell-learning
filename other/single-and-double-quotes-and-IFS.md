## Double Quotes

- Use when you want to enclose variables or use shell expansion inside a string.
- All characters within are interpreted as regular characters except for `$` or ` which will be expanded on the shell.


## Single Quotes

- All characters within single quotes are interpreted as a string character.

## IFS

- The IFS is a special shell variable.
- Can change the value of IFS as per your requirments
- The **internal Field Separator**(IFS) that is used for word splitting after expansion and to split lines into words with the **read uiltin command**.
- The dfault value is **\<space>\<tab>\<newline>**
- IFS variable is commonly used with read command, parameter expansions and command substitution.
