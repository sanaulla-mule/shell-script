#!/bin/bash

USERID=$(-u 0)

if [ $USERID -ne 0 ]

then 

 echo " ERROR:: you must have access the sudo user"
 exit 1

 fi

dnf install mysql -y