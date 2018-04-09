#!/bin/sh

wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
wget https://github.com/Originate/git-town/releases/download/v6.0.2/git-town-amd64.deb
wget https://github.com/aluxian/Messenger-for-Desktop/releases/download/v2.0.9/messengerfordesktop-2.0.9-linux-amd64.deb
wget https://github.com/marcoancona/MineTime/releases/download/v1.1.2/MineTime_1.1.2_amd64.deb
wget https://app.pomodoneapp.com/installers/PomoDoneApp_1.5.1291_amd64.deb
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

dpkg -i *.deb
