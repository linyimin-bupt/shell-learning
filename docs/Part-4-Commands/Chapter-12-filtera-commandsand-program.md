### Basic Commands

- ls

The basic file 'list' command.

- cat

`cat`, an acronym for concatenate, lists a file to stdout. When combined with redirection(< or <<), it is commonly used to contatenate files.

**Note**: In a `pipe`, it may be more efficient to redirect the stdin to a file,rether than to cat the file.

- cp

This is the file copy command.

- mv

This is the file move command.

- rm

Delete(remove) a file or files.

- rmdir

Remove directory.The directory must be empty.

- mkdir

Make directory, creates a new directory.

- chmod

Changes the attributes of an existing file or directory.

- ln

Creates links to pre-existing files.

```shell
ln -s oldfile newfile
```


**Note**:

- The `ln` creates only a reference, apointer to the file only a few bytes in size.

- The `ln` command is most often used with the -s, symbolic or "soft" link flag.Advantage of using the -s flag are that it permits linking across file systems or to directories.

- There are two types of link: `symbolic link` and `hard link`.

**Which type of link to use?**

- eidt the content of the file using any name, whill affect both name.
- hard link is that new name is totally independent of the old name.If the old name is removed, that dose not affect the hard link.
- soft link can refer to a different file system.

### Cpmplex commands

- find

`-exec COMMAND \;`

Carries out COMMAND on each file that `find` matches.The command sequence terminates with ;(The ";" is escape to make certain the shell passes it to `find` literally, without interpreting it as a epcial characters).

**Note**:

If COMMAND cintains {}, then `find` substitutes the full path name of the selected file for "{}".

```shell
find ~ -name 'core*' -exec rm {} \;

# Remove all core dump files from user's home directory
```

- xargs

A filter for feeding arguments to a command, and also a tool for assembling the command themselves.It breaks a data stream into small enough chunks for filters and commands to process.Consider it as a powerful replacement for `backquotes`.

Normally, `xargs` reads from stdin or from a pipe, but it can also be given the output of a file.

**Note**:

- `xargs` process the arguments passed to it sequentially, one at a time.
- An interesting xargs option is -n NN, which limits to NN number of arguments passed.
- Another useful option is -0,in combination with `find -print0 or grep -lz`.This allows handing arguments containing whitespace or quotes.
- THe -P option to xargs permits running processes in parallel.This speeds up execution in a machie with a multicore CPU.

