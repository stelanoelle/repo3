#!/bin/bash

#Description: Script for sonarqube's installation
#Author: Stela
#Date: March 22

echo "installation of sonarqube, please be patient"
sleep 2
echo
su - vagrant
sudo yum update -y
sudo yum install java-11-openjdk-devel -y
sudo yum install java-11-openjdk -y
cd /opt
sudo yum install wget -y
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
sudo yum install unzip -y
sudo unzip /opt/sonarqube-9.3.0.51899.zip
sudo chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
./sonar.sh start
192.168.56.33:9000
sudo firewall-cmd --permanent --add-port=9000/tcp
refrest browser