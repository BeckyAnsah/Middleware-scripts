#!/bin/bash

##Author - Rebecca Ansah - reb.o.ansah@gmail.com

##Date - June 2022

#Jenkins Installation

#1 - Install Java

sudo yum install java-1.8.0-openjdk-devel -y

if [ $? -ne 0 ]
then 
echo "Installation failed please check the error and try again"
exit 99
fi


#2 - Enable Jenkins Repositorysudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

sudo yum install wget -y

sudo sed -i 's/gpgcheck=1/gpgcheck=0/g' /etc/yum.repos.d/jenkins.repo

#3 - Install Latest Version of Jenkins

sudo yum install jenkins -y

sudo systemctl start jenkins

sudo systemctl status jenkins

sudo systemctl enable Jenkins


#4 - Adjust Firewall

sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp

sudo firewall-cmd --reload

