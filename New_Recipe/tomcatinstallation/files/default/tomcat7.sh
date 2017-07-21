#!/bin/bash
echo "Tomcat7 installation starts now....."

java -version

cd /tmp
wget http://www.us.apache.org/dist/tomcat/tomcat-7/v7.0.75/bin/apache-tomcat-7.0.75.tar.gz

tar xzf apache-tomcat-7.0.75.tar.gz
mv apache-tomcat-7.0.75 /usr/local/tomcat7

yum install tomcat7 -y

sed -i 's/8080/8081/g' /usr/local/tomcat7/conf/server.xml

./usr/local/tomcat7/bin/startup.sh

service tomcat7 start
service tomcat7 status
#curl http://<srever_ip>:8080
