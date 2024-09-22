#!/bin/sh

# first argument
filesdir=$1

# second argument
searchstr=$2

# $# returns the number of arguments
# ./script.sh arg1 arg2 arg3 arg4, $# would return 4
# -d is used to check if a specified directory exists. 
if [ "$#" -ne 2 ] 
then
    echo "Wrong input number of arguments!"
    exit 1
elif [ ! -d ${filesdir} ]
then 
    echo "filesdir does not represent a directory on the filesystem."
    exit 1
fi

# Count the number of files in the directory and subdirectories
# find /path/to/directory -type f, -type f means search for files
# wc -l, count the number of lines from the input it receives 
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are ${X} and the number of matching lines are ${Y}"
exit 0
