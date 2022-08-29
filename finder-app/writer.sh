#!/bin/bash

if [ $# -lt 2 ]
then
	echo "Insufficient number of arguments specified"
	exit 1
fi

writefile=$1
writestr=$2

if [ ! -f "$writefile" ]
then
	mkdir -p ${writefile%/*}
fi

echo "$writestr" > "$writefile"

if [ ! $? -eq 0 ]
then
	echo "File could not be created"
	exit 1
fi
