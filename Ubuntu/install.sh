#!/bin/sh
USER=$(whoami)

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install nodejs
sudo apt-get -y install npm
sudo ln -s "$(which nodejs)" /usr/local/bin/node
sudo npm install -g --unsafe-perm node-arduino

firefox -CreateProfile NodeUser -no-remote
cd $(find ~/.mozilla/firefox/ -maxdepth 1 -name "*NodeUser*" -print)
echo 'user_pref("network.websocket.allowInsecureFromHTTPS", true);' > prefs.js

cd

sudo adduser $USER dialout

echo "node-arduino &
firefox -P NodeUser https://ethanmriley.github.io/node-arduino-visualizer" > run.sh

chmod +x run.sh
