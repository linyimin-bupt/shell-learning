#! /bin/bash

stringZ=abcABC123ABCabc

echo ${stringZ/abc/xyz}     # xyzABC123ABCabc

echo ${stringZ//abc/xyz}    # xyzABC123ABCxyz

echo '------------'
echo $stringZ
echo '------------'

echo ${stringZ/#abc/xyz}    # xyzABC123ABCabc

echo ${stringZ/%abc/xyz}    # abcABC123ABCxyz


echo '------------'
echo $stringZ
echo '------------'
echo
# Parameterized

match=abc
replacement=xyz
echo ${stringZ/$match/$replacement}
                            # xyzABC123ABCabc


