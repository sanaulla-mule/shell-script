#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date)
echo "script exected at: $TIMESTAMP"
SUM=$(($NUMBER1+$NUMBER2))

echo " sum of $NUMBER1 and $NUMBER2 is: $SUM"