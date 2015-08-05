#!/usr/bin/env bash

echo "Installing Java..."
cd /opt/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u40-b25/jdk-8u40-linux-x64.tar.gz"
tar xzf jdk-8u40-linux-x64.tar.gz
ln -s /opt/jdk1.8.0_40 /opt/java8

sudo echo "JAVA_HOME=/opt/jdk1.8.0_40/" >> /etc/environment
# add to PATH
escaped_java_home=$(echo "/opt/jdk1.8.0_40/" | sed 's/\//\\\//g')
sed -i "s/\(^PATH.*\)\"$/\1:${escaped_java_home}\/bin\"/" /etc/environment
