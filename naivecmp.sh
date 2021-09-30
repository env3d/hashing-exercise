#!/bin/bash

# A naive implementaion to compare files to see if they are the same O(n^2)

if [ $# -ne 1 ]
then
    echo "Please supply directory name as first argument"
    exit
fi

# first enter the directory
cd $1

# get a list of files
PNGS=$(ls *.png)
# the SKIP array remembers items that have already been process
SKIP=()
# for every PNG, compare to every other PNG
for i in $PNGS
do
    # skip if file have already been process
    if [[ " ${SKIP[*]} " =~ " ${i} " ]]
    then
	continue
    fi

    # here's the big loop
    for j in $PNGS
    do
	cmp -s $i $j
	if [ $? -eq 0 ]
	then
	    SKIP+=($j)
	    echo -n "$j "
	fi
    done
    
    # newline and process the next group
    echo 
done


