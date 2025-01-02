#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]

then 

 echo " ERROR:: you must have access the sudo user"
 exit 1 # other then 0

fi  
 dnf list installed mysql 

 if [ $? -ne 0]
 
 then
        dnf install mysql -y

 if [ $? -ne 0 ]

then 

        echo "Installing mql... Failure"
        exit 1
else 

  echo " Installing mql ...SUCCESS"

fi

 else
  echo  "alredy installed mysql"
fi


dnf install git -y

if [ $? -ne 0 ]

then 

  echo "Installing git .. Failure"
  exit 1
else 
  echo " Installing  git ...SUCCESS"

  fi
