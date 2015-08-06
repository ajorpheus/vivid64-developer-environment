#!/bin/bash

echo "Installing Eclipse..."
JDK_HOME="$(find /opt -name jre -type d -print 2>/dev/null | head -1)/.."
sudo echo "JDK_HOME=${JDK_HOME}" >> /etc/environment
eclipse="http://dist.springsource.com/release/STS/3.7.0.RELEASE/dist/e4.5/spring-tool-suite-3.7.0.RELEASE-e4.5-linux-gtk-x86_64.tar.gz"
wget --quiet -nv ${eclipse}
product=sts
version=3.7.0.RELEASE
mkdir -p /opt/${product}/${version}
chmod 777 -R /opt/${product}/
tar zxf `basename ${eclipse}` -C /opt/${product}/${version} --strip 2 >/dev/null 2>/dev/null
ln -sf /opt/${product}/${version}/STS /usr/bin/STS
rm /opt/${product}/${version}/$(basename ${eclipse})
