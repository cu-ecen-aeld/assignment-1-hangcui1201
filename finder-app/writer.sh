#!/bin/sh

# first argument
writefile=$1

# second argument
writestr=$2

if [ "$#" -ne 2 ]
then
  echo "Wrong input number of arguments!"
  exit 1
fi

# Attempt to create the file and write the content
echo "$writestr" > "$writefile"

# If the last command was successful, $? will return 0
# If the last command failed, $? will return non-zero
if [ $? -ne 0 ]; then
    echo "File could be not created!"
    exit 1
fi