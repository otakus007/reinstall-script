#!/bin/sh

apt-get install -y git
git clone https://github.com/LionSec/katoolin.git  && cp katoolin/katoolin.py /usr/bin/katoolin
chmod +x  /usr/bin/katoolin
katoolin
