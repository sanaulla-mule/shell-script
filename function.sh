#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    
 if [ $1 -ne 0 ]

then 
        echo "$2... Failure"
        exit 1
else 
        echo " $2 ...SUCCESS"
fi
}

if [ $USERID -ne 0 ]
then 

    echo " ERROR:: you must have access the sudo user"
    exit 1 # other then 0

fi  
    dnf list installed mysql 

 if [ $? -ne 0 ] 
 
 then
        dnf install mysql -y
        VALIDATE $? "Installing Mysql"

 else
        echo  "alredy installed mysql"
fi

          dnf list installed git

if [ $? -ne 0 ]

then 
        dnf install git -y
       VALIDATE $? "Installing git"
  else 
       echo " git is alredy installed"

  fi
