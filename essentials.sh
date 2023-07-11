#!/bin/bash

sudo apt install sshfs sshuttle flameshot

cd /opt
git clone https://github.com/cddmp/enum4linux-ng.git
git clone https://github.com/insidetrust/statistically-likely-usernames.git
wget -c https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64
