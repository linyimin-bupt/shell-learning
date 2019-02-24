# nc: 多功能网络工具

nc是一个简单、可靠、强大的网络工具，它可以建立TCP连接，发送UDP数据包，监听任意的TCP和UDP端口，进行端口扫描，处理IPv4和IPv6数据包

## 常用的参数选项

|参数选项|解释说明|
|:---:|:---|
|-l|指定监听端口,然后一直等待网络连接|
|-z|表示zero,表示扫描时不发送任何数据|
|-v|显示详细输出|

### 使用案例

1. 模拟TCP连接并传输文件

窗口1:

```shell
$ nc -l 12345 > test.nc # 监听12345端口,并将数据写入test.nc文件
```

窗口2:

```shell
$ nc 10.0.0.1 12345 < test.log # 使用nc命令向10.0.0.1主机的12345端口传输test.log文件
```

### 使用shell模拟一个简单的web服务器

1. 准备一个文件
```shell
$ cat test.txt
```

输出:

```shell
Welcome to my fade server!!!
```

2. 以守护进程的方式监听相关端口

编写一个简单脚本,使用while守护进程, 脚本web.sh的内容如下:

```shell
$ cat web.sh
```

输出:

```shell
#! /bin/bash

while true
  do
    nc -l 8080 < test.txt # 一直监听12345端口, test.txt是发送给用户的内容
done
```

3. 运行脚本

```shell
bash web.sh
```

4. 使用curl进行访问

```shell
$ curl 127.0.0.1:8080
```

输出:

```shell
Welcome to my fade server!!!
```

### 使用nc进行端口扫描

```shell
nc -zv 10.0.0.1 20-30 # 扫描10.0.0.1主机的20到30端口
```

### 简单聊天工具

在192.168.2.34上： 

```shell
$ nc -l 1234
```

在192.168.2.33上： 
```shell
nc 192.168.2.34 1234
```

这样，双方就可以相互交流了。使用ctrl+C(或D）退出。

