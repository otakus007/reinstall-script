#!/bin/sh
#Install DockerCE
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install -y docker-ce

curl -L https://github.com/docker/machine/releases/download/v0.14.0/docker-machine-Linux-x86_64 >/tmp/docker-machine && \
sudo install /tmp/docker-machine /usr/local/bin/docker-machine

#Allow non-root user can use docker command
groupadd docker
usermod -a -G docker $SUDO_USER
usermod -aG docker $USER

#Start docker daemon automatically
systemctl enable docker
