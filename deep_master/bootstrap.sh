#!/usr/bin/env bash

# Initial Setup
add-apt-repository -y ppa:webupd8team/java
apt-add-repository -y ppa:ansible/ansible

echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

apt-get update
apt-get install -y curl
apt-get install -y tree
apt-get install -y telnet
apt-get install -y linux-headers-generic build-essential dkms
apt-get install -y oracle-java8-installer
apt-get install -y make
apt-get install -y g++
apt-get install -y git
apt-get install -y python 
apt-get install -y unzip
apt-get install -y software-properties-common
apt-get install -y ansible
apt-get install -y maven
apt-get install -y python-pip

# Install packages from PIP
pip install -U awscli
pip install -U boto

# Install NodeJS
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install -y nodejs
# Setup Node Dependencies
npm install -g typescript@1.5.3
npm install -g uglify-js@2.4.16 
npm install -g tsd@0.6.0-beta.5
npm install -g typedoc@0.3.12 

# Cleanup
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
rm -rf /var/cache/oracle-jdk8-installer

# Maven Setup
mkdir /home/vagrant/.m2
cp /home/vagrant/share/maven/settings.xml /home/vagrant/.m2/settings.xml


apt-get autoclean -y
apt-get autoremove -y
