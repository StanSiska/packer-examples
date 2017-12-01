#!/bin/bash

echo "Wait 10 seconds before we begin with SSH connection ..."
sleep 10

echo "Adding Jenkins repository ..."
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat-stable/jenkins-ci.org.key

echo "Installing Jenkins ..."
sudo yum install jenkins -y 
sudo service jenkins start

echo "Jenkins configured to start after boot"
sudo chkconfig jenkins on