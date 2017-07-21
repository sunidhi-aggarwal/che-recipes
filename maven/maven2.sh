#!/bin/bash
echo "Maven installation starts now....."

wget http://mirror.olnevhost.net/pub/apache/maven/binaries/apache-maven-3.2.1-bin.tar.gz
tar xvf apache-maven-3.2.1-bin.tar.gz

yum install jenkins –y

service start jenkins
service enable jenkins
