#!/bin/bash
echo "Please enter the username"
read USER_NAME

grep -q ${USER_NAME} /etc/passwd

if

   [  $? -eq 0 ]

then

echo "USER {$USER_NAME} exists on this system"

else

echo "USER {$USER_NAME} does not exist on this system"
fi
