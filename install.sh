#!/bin/sh

ssh-keygen -t rsa -b 4096 -C "sample@sample.com"

# create id_rsa and id_rsa.pub
# copy id_rsa.pub text to each services
#   github.com or bitbucket.com ..

# after ansible implementation

nvm ls

# check version of node

nvm install v5.10.0

# add newrelic

sudo echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list
wget -O- https://download.newrelic.com/xxxxx.gpg | apt-key add -
sudo apt-get update
apt-get install newrelic-sysmond
sudo nrsysmond-config --set license_key=xxxxxxxxxxx
sudo /etc/init.d/nrsysmond-config start

# add newrelic php
sudo apt-get install newrelic-php5

# set boot
sudo sysv-rc-conf
