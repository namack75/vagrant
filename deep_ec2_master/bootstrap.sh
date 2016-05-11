#!/usr/bin/env bash

### Initial Setup
apt-get update
apt-get install -y curl
apt-get install -y tree
apt-get install -y telnet
apt-get install -y linux-headers-generic build-essential dkms software-properties-common
apt-get install -y make
apt-get install -y g++
apt-get install -y unzip
apt-get install -y python 


### Add additional repos
add-apt-repository -y ppa:webupd8team/java
add-apt-repository -y ppa:ansible/ansible
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get update

### Setup default acceptance of Oracle License
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections

### Install Development related software
apt-get install -y git
apt-get install -y ansible
apt-get install -y maven
apt-get install -y python-pip
# apt-get install -y oracle-java8-installer

### Install packages from PIP
# pip install -U awscli
# pip install -U boto

# # Install NodeJS

# apt-get install -y nodejs
# # Setup Node Dependencies
# npm install -g typescript@1.5.3
# npm install -g uglify-js@2.4.16 
# npm install -g tsd@0.6.0-beta.5
# npm install -g typedoc@0.3.12 

# # Cleanup
# rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 
# rm -rf /var/cache/oracle-jdk8-installer

# # Maven Setup
# mkdir /home/vagrant/.m2
# cp /home/vagrant/share/maven/settings.xml /home/vagrant/.m2/settings.xml


# apt-get autoclean -y
# apt-get autoremove -y
