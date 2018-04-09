#!/bin/sh
#Install DockerCE
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
apt update
apt install -y docker-ce
#Allow non-root user can use docker command
groupadd docker
usermod -aG docker $SUDO_USER
usermod -aG docker $USER

#Start docker daemon automatically
systemctl enable docker

#service docker stop
#mv /var/lib/docker /data/
# reboot and get root
#service docker stop
#rm -rf /var/lib/docker && ln -s /data/docker /var/lib/
#service docker start
