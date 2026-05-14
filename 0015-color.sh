#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure other than 0
fi

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
          echo -e "Installing $2 ... $R FAILURE $N"
          exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N"
    fi

}

dnf list installed mysql
# install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -Y
    VALIDATE $? "MYSQL"
else
   echo -e "MYSQL already exit ... $Y SKIPPING $N"
fi

dnf list installed python3
if [ $? -ne 0 ]; then
      dnf install python3 -y
      VALIDATE $? "python3"

else
   echo -e "python3 already exit ... $Y SKIPPING $N"
fi

