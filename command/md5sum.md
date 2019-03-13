## md5sum 计算和校验文件的MD5值

### 常用参数

|参数选项|解释说明|
|:---|:---|
|-b|二进制模式读取文件|
|-c|从指定文件中读取md5校验值,并进行校验|
|-t|文本模式读取文件,默认模式|
|--quite|校验文件使用的参数,验证通过不输出OK|
|--status|校验文件使用参数,不输出任何信息,可以根据命令的返回值来判断|

### 生成一个文件的MD5值

```shell
$ md5sum 文件名
```

### 检验文件是否发生改变

```shell
$ md5sum -c md5文件名
```
