#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

echo starting... # to test stdout output in /var/log/killercoda

#sleep 5 # some long running background task

#touch /tmp/finished
#cat my-file.txt
git clone https://github.com/Bootcamp-AI/nodejs-app-starting-setup.git
cd nodejs-app-starting-setup
cat server.js

curl -sL https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.0/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.bashrc
nvm install 20.18.0
nvm use 20.18.0

