#!/bin/sh

# Install Nodejs
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install -y nodejs

# Install YARN
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt update && apt install -y yarn

groupadd npm
usermod -aG npm $USER

npm install n -g
npm i -g npm
n latest

# Install MongoDB
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.6.list
apt update
apt install -y mongodb-org
