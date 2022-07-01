#!/bin/bash

#Author - Rebecca Ansah
#Date - June 2022

# This script will provide system inventory information as needed. 

# 1 - Check System Memory Performance
echo "Memory Information"
free -m 

sleep 2

# 2 - Check CPU information
echo "CPU Information"
nproc
lscpu

sleep 2

# 3 - Check Hard Drive information
echo "Hard Drive Information"
lsblk

sleep 2

# 4 - Check Kernel information
echo "Kernel Information"
uname -a 

sleep 2

# 5 - Check OS release/version
echo "OS Information"
cat /etc/*release 

