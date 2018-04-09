#!/bin/sh
apt update
apt upgrade -y
apt install -y git curl wget
./basic.sh
./docker_mint.sh
./fish.sh
./internet.sh
./multimedia.sh
./node.sh
./vscodedotnet.sh
./golang.sh
./customize.sh
./additional-software.sh
./removeApps.sh
./dpkg.sh
./runFishShellAtLast.sh
