#!/bin/bash

 yum update -y

 yum install git -y

 wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo

 rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

 yum install jenkins -y

 yum install java-1.8.0-openjdk -y

 service jenkins start

 yum install docker -y

 service docker start