#! /bin/bash

while true
  do
    nc -l 8080 < test.txt # 一直监听12345端口, test.txt是发送给用户的内容
done