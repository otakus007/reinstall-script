#!/bin/sh
#Install Go
apt update
apt -y upgrade
curl -O https://dl.google.com/go/go1.10.linux-amd64.tar.gz 
tar -xvf go1.10.linux-amd64.tar.gz
mv go /usr/local
rm go1.10.linux-amd64.tar.gz
touch ~/.config/fish/config.fish
echo 'export PATH=$PATH:/usr/local/go/bin' >>~/.profile
