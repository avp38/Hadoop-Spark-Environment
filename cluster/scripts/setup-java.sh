#!/usr/bin/env bash

function installJava1.7 {
    echo "Installing openjdk-1.7"
    yum -y install java-1.7.0-openjdk-devel java-1.7.0-openjdk
}

function setupEnvVars {
	echo "creating java environment variables"
	echo export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk-1.7.0.131-2.6.9.0.el7_3.x86_64 >> /etc/profile.d/java.sh
	echo export PATH=\${JAVA_HOME}/bin:\${PATH} >> /etc/profile.d/java.sh
}

echo "setup java"
installJava1.7
setupEnvVars