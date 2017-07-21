#!/bin/bash
echo "Java installation starts now"
cd /opt &&
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u101-b13/jdk-8u101-linux-x64.tar.gz" &&
tar xzf jdk-8u101-linux-x64.tar.gz &&
cd /opt/jdk1.8.0_101/ &&
alternatives --install /usr/bin/java java /opt/jdk1.8.0_101/bin/java 2 &&
alternatives --config java &&
#alternatives --install /usr/bin/jar jar /opt/jdk1.8.0_101/bin/jar 2 &&
alternatives --install /usr/bin/javac javac /opt/jdk1.8.0_101/bin/javac 2 &&
alternatives --set jar /opt/jdk1.8.0_101/bin/jar &&
alternatives --set javac /opt/jdk1.8.0_101/bin/javac &&
echo "Setting up path..."
export JAVA_HOME=/opt/jdk1.8.0_101 &&
export JRE_HOME=/opt/jdk1.8.0_101/jre &&
export PATH=$PATH:/opt/jdk1.8.0_101/bin:/opt/jdk1.8.0_101/jre/bin
