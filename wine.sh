#!/bin/sh


#winehq
apt-add-repository -y 'https://dl.winehq.org/wine-builds/ubuntu/'
wget https://dl.winehq.org/wine-builds/Release.key;sudo apt-key add Release.key
apt update
apt install -y wine-staging winehq-staging winetricks
