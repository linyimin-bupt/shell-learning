## File and Archiving Commands

### Arechving

- tar

The standard UNIX archiving utility.Originally a Tape ARchiving program, it has developed into a general purpose package that can handle all manner of archiving with all types of destination devices,ranging from tape drives to regular files to even stdout.

Some useful `tar` options

|options|description|
|:---:|:---|
|-c|create|
|-x|extract|
|--delete|delete(files from existing archive)|
|-z|gzip the archive|
|-j|bzip2 the archive|

### Compression

- gzip

The standard GNU/UNIX compression utility,replacing the inferior and proprietary `compress`.The corresponding decompression command is `gunzip`,which is the equivalent of `gzip -d`.

- bzip2

An alternate compression utility,usually more efficient(but slower) than `gzip`, especially on large files.The corresponding decompression command is `bunzip2`.

- compress, uncompress

This is a older,proprietary compression utility found in commercial UNIX distributions.The more efficient `gzip` has largely replaced it.

- zip, unzip

Cross-platform file archiving and compression utility compatible with DOS `pkzip.exe`.

- unarc, unarj, unrar

These Linux utilities permit unpacking archives compressed with the DOS `arc.exe, arj.exe` and `rar.exe` programs.

- xz, unxz, xzcat

A new high-efficiency compression tool,backward compatible with `lzma`, and with an invocation syntax similar to `gzip`.



