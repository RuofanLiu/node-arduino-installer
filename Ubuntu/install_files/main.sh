#!/bin/sh

apt-get -y update
apt-get -y upgrade
apt-get -y install nodejs
apt-get -y install npm
ln -s "$(which nodejs)" /usr/local/bin/node
npm install -g --unsafe-perm node-arduino

adduser $1 dialout
