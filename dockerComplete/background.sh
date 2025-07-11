#!/bin/bash

set -x # to test stderr output in /var/log/killercoda

echo starting... # to test stdout output in /var/log/killercoda

#sleep 5 # some long running background task

#touch /tmp/finished
#cat my-file.txt
git clone https://github.com/Bootcamp-AI/first-demo-starting-setup.git
cd first-demo-starting-setup
cat app.mjs
