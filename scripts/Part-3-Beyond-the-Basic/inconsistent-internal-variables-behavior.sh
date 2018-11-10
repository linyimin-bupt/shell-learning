#! /bin/bash

# Erratic behavior of the "$*" and "$@"internal Bash variables, depending on whether or not they are quoted.

# Setting script arguments, $1, $2, $3 etc.

set -- "First one" "second" "third one" "" "Fifth : :one"

echo

echo 'IFS unchanged, using "$*"'

c=0

for i in "$*"
do
  echo "$((c+=1)): [$i]"        # 1: [First one second third one  Fifth : :one]
done

echo ---

echo 'IFS unchanged, using $*'

c=0
for i in $*
do
  echo "$((c+=1)): [$i]"
done

# 1: [First]
# 2: [one]
# 3: [second]
# 4: [third]
# 5: [one]
# 6: [Fifth]
# 7: [:]
# 8: [:one]

echo ------

echo 'IFS unchanged, using "$@"'
c=0
for i in "$@"
do
  echo "$((c+=1)): [$i]"
done
echo ---

# 1: [First one]
# 2: [second]
# 3: [third one]
# 4: []
# 5: [Fifth : :one]

echo 'IFS unchanged, using $@'

c=0
for i in $@
do
  echo "$((c+=1)): [$i]"
done
echo ---

# 1: [First]
# 2: [one]
# 3: [second]
# 4: [third]
# 5: [one]
# 6: [Fifth]
# 7: [:]
# 8: [:one]

IFS=:
echo 'IFS=":", using "$*"'
c=0
for i in "$*"
do
  echo "$((c+=1)): [$i]"
done
echo ---

# 1: [First one:second:third one::Fifth : :one]

IFS=:
echo 'IFS=":", using $*'
c=0
for i in $*
do
  echo "$((c+=1)): [$i]"
done
echo ---

# 1: [First one]
# 2: [second]
# 3: [third one]
# 4: []
# 5: [Fifth ]
# 6: [ ]
# 7: [one]

IFS=:
echo 'IFS=":", using "$@"'
c=0
for i in "$@"
do
  echo "$((c+=1)): [$i]"
done
echo ---

# 1: [First one]
# 2: [second]
# 3: [third one]
# 4: []
# 5: [Fifth : :one]

IFS=:
echo 'IFS=":", using $@'
c=0
for i in $@
do
  echo "$((c+=1)): [$i]"
done
echo ---

# 1: [First one]
# 2: [second]
# 3: [third one]
# 4: []
# 5: [Fifth ]
# 6: [ ]
# 7: [one]
