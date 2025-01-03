#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"

VALIDATE(){
    
 if [ $1 -ne 0 ]

then 
        echo  -e "$2...$R Failure"
        exit 1
else 
        echo -e " $2 ..  $G SUCCESS"
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
        echo -e  " $Y alredy installed mysql"
fi

          dnf list installed git

if [ $? -ne 0 ]

then 
        dnf install git -y
       VALIDATE $? "Installing git"
  else 
       echo -e "  $Y git is alredy installed"

  fi
