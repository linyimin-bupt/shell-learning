#! /bin/bash

stringZ=abcABC123ABCabc

# 0-based indexing

echo ${stringZ:0}       # abcABC123ABCabc
echo ${stringZ:1}       # bcABC123ABCabc
echo ${stringZ:7}       # 23ABCabc

echo ${stringZ:7:3}     # 23A

# -----------------------------

echo "index from the right end of the string"

echo ${stringZ: -4}     # Cabc
echo ${stringZ: (-4)}   # Cabc


