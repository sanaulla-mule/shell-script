#!/bin/bash

NUMBER1=$1
NUMBER2=$2

TIMESTAMP=$(date)

echo "script exection time at: $TIMESTAMP"

SUM=$(($NUMBER1+$NUMBER2))
SUB=$(($NUMBER1-$NUMBER2))
MUL=$(($NUMBER1*$NUMBER2))
DEV=$(($NUMBER1/$NUMBER2))

echo " sum of NUMBER1 and NUMBER2: $SUM"
echo " SUB of NUMBER1 and NUMBER2: $SUB"
echo " MUL of NUMBER1 and NUMBER2: $MUL"
echo " DEV of NUMBER1 and NUMBER2: $DEV"



