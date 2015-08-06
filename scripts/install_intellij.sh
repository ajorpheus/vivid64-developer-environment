#!/bin/bash

echo "Installing intellij..."
JDK_HOME="$(find /opt -name jre -type d -print 2>/dev/null | head -1)/.."
echo "JDK_HOME=${JDK_HOME}" >> /etc/environment
intellij="http://download.jetbrains.com/idea/ideaIC-14.1.4.tar.gz"
product="intellij"
version=$(echo ${intellij} | sed 's/^.*idea\/\([a-zA-Z\-]*.[a-z]*\)-\([0-9\-\.]*\).tar.gz/\2/')
mkdir -p /opt/${product}/${version}
chmod 777 -R /opt/${product}/
wget --quiet -nv ${intellij} -O /opt/${product}/${version}
tar zxf `basename ${intellij}` -C /opt/${product}/${version} --strip 1 >/dev/null 2>/dev/null
#product_executable="$(find /opt/${product}/${version}/bin -type f -name \"idea*.sh\" 2>/dev/null | head -1)"
ln -sf /opt/${product}/${version}/bin/idea.sh /usr/bin/${product}
rm $(basename ${intellij})
