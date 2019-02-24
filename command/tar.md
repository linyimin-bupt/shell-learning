# tar 打包备份

常用参数选项

|参数选项|解释说明|
|:---:|:---|
|z|通过gzip压缩或解压|
|c|创建新的tar包|
|v|显示详细的tar命令执行过程|
|f|指定压缩文件的名字|
|p|保持文件的原有属性|
|j|通过bzip2命令压缩或解压|
|x|解开tar包|
|C|指定解压的目录路径|
|--exclude=PATTERN|打包时排除不需要处理的文件或目录列表|
|-X 文件名|从指定文件读取不需要处理的文件或目录列表|
|h|打包软连接文件指向的真实源文件|

## 常用例子

1. 不解压查看压缩包内的内容

```shell
$ tar -ztvf etcd-v3.3.10-linux-amd64.tar.gz
```

结果:

```shell
drwxr-xr-x leegyuho/amazon   0 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/
drwxr-xr-x leegyuho/amazon   0 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/
drwxr-xr-x leegyuho/amazon   0 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/platforms/
-rw-r--r-- leegyuho/amazon 6851 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/platforms/container-linux-systemd.md
-rw-r--r-- leegyuho/amazon 8773 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/platforms/aws.md
-rw-r--r-- leegyuho/amazon 2616 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/platforms/freebsd.md
drwxr-xr-x leegyuho/amazon    0 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/rfc/
-rw-r--r-- leegyuho/amazon 5332 2018-10-11 01:32 etcd-v3.3.10-linux-amd64/Documentation/rfc/v3api.md
```

2. 解开压缩包

```shell
$ tar -zxvf etcd-v3.3.10-linux-amd64.tar.gz
```

3. 排除打包目录

```shell
tar zcvf test.tar.gz ./test --exclude=./test/old1 --exclude=./test/old
```

**注意**: 排除目录后不能添加/,否则会排除失败

4. 排除多个文件打包参数-X

```shell
$ tar -zcvfX test.tar.gz list.txt ./test
```

5. 打包链接文件(-h)

```shell
$ tar -zcvfh test.tar.gz ./test
```