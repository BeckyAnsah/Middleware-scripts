#!/bin/bash

#Author - Rebecca Ansah
#Date - June 2022

# This script will provide system inventory information as needed. 

# 1 - Check System Memory Performance

free -m 

# 2 - Check CPU information

nproc
lscpu

# 3 - Check Hard Drive information

lsblk

# 4 - Check Kernel information

uname -a 


# 5 - Check OS release/version

cat /etc/*os-release 

