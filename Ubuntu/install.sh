#!/bin/sh
USER=$(whoami)

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo ln -s "$(which nodejs)" /usr/local/bin/node
sudo npm install -g --unsafe-perm node-arduino

sudo adduser $USER dialout
