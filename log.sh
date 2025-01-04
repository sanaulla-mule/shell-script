#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-log"
LOG_FILE=$( echo $0 | cut -d "." -f1 )
TIMESTAMP=$(date %Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOGS_FOLDER/$LOG_FILE-$TIMESTAMP.log"

VALIDATE(){
    
 if [ $1 -ne 0 ]

then 
        echo "$2... Failure" 
        exit 1
else 
        echo " $2 ...SUCCESS" 
fi
}
 echo "script execution time at: $TIMESTAMP"  &>>LOG_FILE_NAME
if [ $USERID -ne 0 ]
then 

    echo " ERROR:: you must have access the sudo user"
    exit 1 # other then 0

fi  
    dnf list installed mysql &>>LOG_FILE_NAME

 if [ $? -ne 0 ] 
 
 then
        dnf install mysql -y
        VALIDATE $? "Installing Mysql"

 else
        echo  "alredy installed mysql"
fi

          dnf list installed git &>>LOG_FILE_NAME

if [ $? -ne 0 ]

then 
        dnf install git -y
       VALIDATE $? "Installing git"
  else 
       echo " git is alredy installed"

  fi
