#!/bin/bash

echo "Please enter the groupname"
read GROUP_NAME

grep -q ${GROUP_NAME} /etc/group

if

   [  $? -eq 0 ]

then

echo "GROUP {$GROUP_NAME} exists on this system"

else

echo "GROUP {$GROUP_NAME} does not exist on this system"
fi
