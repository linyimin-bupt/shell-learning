## Concept of Process

A process can be simply defined as an instance of a running programe.

Porcesses have the concept of a lifetime associated with them. 

- Processes come to life, or are said to be born as a program is loaded and begin execution.
- Processes remain alive while the program continues execution(Processes, however can have different states of life)
- Processes ceast to exist and are said to die as the running program terminated(either normally or abnormally)

All processes(except the very first one) have a parent which created them, and can be linked to the one initial process.So processes have a simalar hierarchical structure to that of the file system.

### Attributes Associated with process

A process attributes are stored in a strutruememory which is called a Process Control Block,or **PCB**.

- Each process will have a unique numberic identifier associated with it, referred to as its process identification number,or **PID**
- Each porcess also has a reference to the PID of its parent, i.e. the parent process id,or **PPID**
- Each process will have priorities associated with them,i.e. the priority of roder of execution
- Processes have ownership attributes associated with them, both from the user level and group level
- Processes will have a **state** attribute associated with them,typically assigned and updated by the kernel


### Processes come to life

- `fork()` system call

The parent creates(spawns) a copy of itself,including its PCB, which will become the child process.THe (child) copy is almost identical to the parent,except the child gets its own PID.

- `exec()` system call

The "process space" of the child process is then overlayed with the process image of the newly running program.In other words, the parent process is directly aoverlayed by the "process image" of the newly running process(child).This results in only a single process,since the original parent was ocerlayed and essentially destroyed.The PID of the new child is the same as the PID of the deceased parent.