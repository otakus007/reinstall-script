#!/bin/sh

#Install Visual Studio Code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
apt update
apt install -y code

#Install dotnet sdk 2.1.4
sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'

apt update
apt install -y dotnet-sdk-2.1.4

npm install -g yo
npm install -g generator-aspnet

#postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
ln -s /opt/Postman/Postman /usr/bin/postman

#mssql-2017
#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
#add-apt-repository -y "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/prod.list)"
#apt update
#apt install -y mssql-tools unixodbc-dev
#echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
#echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
#source ~/.bashrc
