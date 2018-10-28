## xargs

**Build and execute command lines from standard input**

### 描述
From Wikipedia

**xargs is a command on Unix and most Unix-like systems used to build and execute commands from standard input. It converts input from standard input into arguments to a command.**

**Some commands such as `grep` and `awk` can take input either as command-line argumens or from the the standard input. However, others such as `cp` and `echo` can only take input as arguments, which is why `xargs` is necessary**

`xargs`命令是给其他命令传递参数的一个过滤器，也是可以组合多个命令的一个工具。
`xargs`命令的功能
- 处理pipe或者stdin数据并将其转换成特定命令的命令参数
- 将单行或者多行文本输入转换成其他格式

`xargs`的默认命令是echo,默认定界符是空格 --- 通过管道传递给xargs的输入中的换行和空白会被空格取代。

### [常用的12个实践](https://www.tecmint.com/xargs-command-examples/)