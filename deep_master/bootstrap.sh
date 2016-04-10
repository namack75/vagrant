#!/usr/bin/env bash

apt-add-repository -y ppa:ansible/ansible

apt-get update
apt-get install -y linux-headers-generic build-essential dkms
apt-get install -y awscli
apt-get install -y ansible
apt-get install -y git
apt-get install -y python-pip
apt-get install -y unzip

pip install -U boto
