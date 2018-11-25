#! /bin/bash
var=0

let var++

echo $?     # 1

let var++

echo $?     # 0

var=0

let "var+=1"

echo $?    # 0

# If the alst ARG evaluates to 0, let returns 1
# let returns 0 otherwise.