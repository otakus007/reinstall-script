#!/bin/sh

sh -c 'echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list'
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C1988
sudo apt-get update; sudo apt-get install spotify-client
#simple screen recorder
add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
apt update
apt install -y simplescreenrecorder

#vlc
apt update
apt install -y vlc browser-plugin-vlc

#obs
add-apt-repository -y ppa:obsproject/obs-studio
apt update 
apt install -y obs-studio

#openshot-qt
#sudo add-apt-repository ppa:openshot.developers/ppa
#apt update
#apt install -y openshot-qt

apt install -y kdenlive

#smplayer
#sudo add-apt-repository -y ppa:rvm/smplayer
#sudo apt update
#sudo apt install -y smplayer smtube smplayer-themes smplayer-skins mpv
