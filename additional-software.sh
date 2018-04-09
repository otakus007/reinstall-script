#!/bin/sh

#grub customizer
add-apt-repository -y ppa:danielrichter2007/grub-customizer
apt update
apt install -y grub-customizer

#unikey
apt install -y ibus-unikey
im-config -n ibus
#apt install -y fcitx-unikey fcitx-frontend-qt4
#im-config -n fcitx

#java
apt install -y default-jre

apt install -y python-pip
apt install -y msttcorefonts
apt install -y tlp
tlp start

apt install -y goldendict
apt install -y virtualbox virtualbox-qt 
wget http://download.virtualbox.org/virtualbox/5.2.8/Oracle_VM_VirtualBox_Extension_Pack-5.2.8.vbox-extpack

add-apt-repository -y ppa:dobey/redshift-daily
apt update
apt install -y redshift

#copyQ 
add-apt-repository -y ppa:hluk/copyq
apt update
apt install -y copyq

#albert
add-apt-repository -y ppa:noobslab/macbuntu
apt update
apt install -y albert

#xdm
#add-apt-repository -y ppa:noobslab/apps
#apt update
#apt install -y xdman-downloader

#mkdir xdm;cd xdm;wget -O xdm64.tar.xz https://sourceforge.net/projects/xdman/files/xdm-2018-x64.tar.xz/download
#tar -xvf xdm64.tar.xz
#./install.sh

#libreoffice
add-apt-repository -y ppa:libreoffice/ppa
apt update
apt install -y libreoffice

#apt install -y xdotool
#apt install -y actiona

add-apt-repository -y ppa:ultradvorka/ppa
apt-get update
apt-get install -y hh

apt install -y bleachbit unzip unrar
apt install -y dropbox
#apt install -y plasma-discover #kde only

#typora
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
add-apt-repository -y 'deb http://typora.io linux/'
apt-get update
apt-get install -y typora

#fingerprint
#add-apt-repository -y ppa:fingerprint/fingerprint-gui
#apt update
#apt instal -y libbsapi policykit-1-fingerprint-gui fingerprint-gui

#stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.9/Stacer-x64.AppImage

wget -O - https://raw.githubusercontent.com/edipox/wunderlistux/master/bin/install.sh | sudo bash

#owncloud
#sudo sh -c "echo 'deb http://download.owncloud.org/download/repositories/stable/Ubuntu_16.04/ /' >> /etc/apt/sources.list.d/owncloud.list"
#wget http://download.owncloud.org/download/repositories/stable/Ubuntu_16.04/Release.key;sudo apt-key add - < Release.key
#sudo apt update
#sudo apt install -y owncloud
#sudo apt install -y owncloud-files

#wine
#dpkg --add-architecture i386
#wget -nc https://dl.winehq.org/wine-builds/Release.key
#apt-key add Release.key
#apt-add-repository -y https://dl.winehq.org/wine-builds/ubuntu/
#apt-add-repository -y 'deb https://dl.winehq.org/wine-builds/ubuntu/ xenial main'
#apt update
#apt install -y winehq-stable

#search --fs-uuid --no-floppy --set=root 3CFC-1775
#chainloader (${root})/EFI/Microsoft/Boot/bootmgfw.efi

#docker run -d -p 1337:1337 --name=jb_licsrv --restart=always nuaays/jetbrains:lic_server
