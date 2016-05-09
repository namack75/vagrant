#!/usr/bin/env bash

apt-get update
apt-get install -y linux-headers-generic dkms

# Setup NodeJS
curl -sL https://deb.nodesource.com/setup | sh
apt-get install -y nodejs build-essential

apt-get install -y nginx
apt-get install -y postgresql-9.4 postgresql-contrib
       
apt-get autoclean -y
apt-get autoremove -y