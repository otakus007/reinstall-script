#!/bin/sh
apt remove -y --purge simple-scan pitivi parole cheese ristretto xfburn gimp-2.8
apt remove -y --purge geary gimp gnome-mahjongg gnome-mines quadrapassel gnome-sudoku aisleriot
apt remove -y --purge xreader xviewer xplayer orca hexchat pidgin transmission-gtk apturl xfce4-dict 
apt remove -y --purge k3b skanlite dragonplayer kontact ktorrent konversation kwalletmanager kmail korganizer
apt clean
apt autoremove -y
