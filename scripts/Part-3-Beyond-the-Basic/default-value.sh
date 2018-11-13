#! /bin/bash

# Whether a variable has been declared affects trggering of the default option even if the variable is null

username0=

echo "username0 has been declared, but is set to null"
echo "username0=${username0-$(whoami)}"   # echo null

echo

echo "username1 has not been declared"
echo "username1=${username1-$(whoami)}"   # username1=linyimin

echo

username2=

echo "username2 has been declared, but is set to null"
echo "username2=${username2:-$(whoami)}"   # echo null
echo

# ${parameter=default}, ${parameter:=default}

echo "suername3 has not been declared."
echo ${username3=123}                # 123
echo ${username3=456}                # 123
echo ${username3}                    # 123

echo "username4 has been declared, but is set to null"

username4=

echo ${username4=123}                # echo null
echo ${username4:=123}               # 123
echo ${username4:=456}               # 123


# ${parameter?err_msg}, ${parameter:?err_msg}

# echo ${username5?username5 has not been set}

# print /home/linyimin/practice/shell-learning/scripts/Part-3-Beyond-the-Basic/default-value.sh: line 46: username6: username6 has not been set

username6=
echo ${username6?username6 has not been set}
# echo null

echo ${username6:?username6 has not been set}

# print /home/linyimin/practice/shell-learning/scripts/Part-3-Beyond-the-Basic/default-value.sh: line 46: username6: username6 has not been set