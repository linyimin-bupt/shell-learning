## Introduction

### What is shell script

- The shell is a command interpreter.
- The insulating layer between the operating system kernel and the user
- A fairly powerful programming language.
- Especially well suited for administrative system tasks and other routin repetitive tasks. 

 A shell program, called a script, is an easy-to-use tool for building applications by "gluing together" system calls, tools, utilities, and compiled binaries.

### Advantage

- Classic UNIX philosophy
  - Breaking complex projects into simpler subtasks
  - Chaining together components and utilities

- Better abd more esthetically pleasing approach to problem solving than using high-powered all-in-one language, for we do not need to alter our thinking processed to fit the tool.

### When not to use shell scripts

- Resource-intensive tasks, especially where speed is a factor (sorting, hashing, recursion ...)

- Procedures involving heavy-duty math operations, especially floating point arithmetic, arbitrary precision calculations, or complex numbers (use C++ or FORTRAN instead)

- Cross-platform portability required (use C or Java instead)

- Complex applications, where structured programming is a necessity (type-checking of variables, function prototypes, etc.)

- Mission-critical applications upon which you are betting the future of the company

- Situations where security is important, where you need to guarantee the integrity of your system and protect against intrusion, cracking, and vandalism

- Project consists of subcomponents with interlocking dependencies

- Extensive file operations required (Bash is limited to serial file access, and that only in a particularly clumsy and inefficient line-by-line fashion.)

- Need native support for multi-dimensional arrays

- Need data structures, such as linked lists or trees

- Need to generate / manipulate graphics or GUIs

- Need direct access to system hardware or external peripherals

- Need port or socket I/O

- Need to use libraries or interface with legacy code

- Proprietary, closed-source   applications (Shell scripts put the source code right out in the open for all the world to see.)

### The sha-bang(#！)

The sha-bang(#!) at the head of a script tells our system that:
This file is a set of commands to be fed to the command interpreterindicated.
