# visudo: 编辑sudoers文件

## sudo权限配置说明

|待授权的用户或组|机器=(授权角色)|可以执行的命令|
|:---|:---:|:---|
|user|MACHINE=|COMMANDS|
|oldboy|ALL=(ALL)|/usr/sbin/useradd,/usr/sbin/userdel|

## 使用visudo编辑sudoers文件

```shell
$ visudo
```

## 手动检查sudoers 语法

```shell
$ visudo -c
```