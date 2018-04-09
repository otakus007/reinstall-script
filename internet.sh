#!/bin/sh

#messenger
apt-key adv --keyserver pool.sks-keyservers.net --recv 6DDA23616E3FE905FFDA152AE61DA9241537994D
echo "deb https://dl.bintray.com/aluxian/deb/ dev main" | tee -a /etc/apt/sources.list.d/aluxian.list
apt update
apt install -y messengerfordesktop

#yandex
echo "deb [arch=amd64] http://repo.yandex.ru/yandex-browser/deb beta main" |  tee /etc/apt/sources.list.d/yandex-browser-beta.list
wget -q -O - https://repo.yandex.ru/yandex-browser/YANDEX-BROWSER-KEY.GPG | apt-key add -
apt update
apt install -y yandex-browser-beta

apt install -y chromium-browser
apt install -y opera-stable
apt install -y firefox
apt install -y thunderbird

#brave 
curl https://s3-us-west-2.amazonaws.com/brave-apt/keys.asc | apt-key add -
echo "deb [arch=amd64] https://s3-us-west-2.amazonaws.com/brave-apt xenial main" | sudo tee -a /etc/apt/sources.list.d/brave-xenial.list
apt update 
apt install -y brave

apt install -y qbittorrent
apt install -y skypeforlinux

#firefox nightly
#add-apt-repository -y ppa:ubuntu-mozilla-daily/ppa
#apt update
#apt install -y firefox-trunk

#tor
#wget https://www.torproject.org/dist/torbrowser/8.0a1/tor-browser-linux64-8.0a1_en-US.tar.xz
#tar -xvJf tor-browser-linux64-8.0a1_en-US.tar.xz
