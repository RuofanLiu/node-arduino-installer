#!/bin/sh

#install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Update homebrew recipes
brew update

USER=$(whoami)
brew update
brew upgrade
brew install node
brew install npm
ln -s "$(which nodejs)" /usr/local/bin/node
npm install -g --unsafe-perm node-arduino

firefox -CreateProfile NodeUser -no-remote
cd $(find ~/.mozilla/firefox/ -maxdepth 1 -name "*NodeUser*" -print)
echo 'user_pref("network.websocket.allowInsecureFromHTTPS", true);' > prefs.js

cd

sudo dscl . -create $USER dialout

echo "node-arduino &
firefox -P NodeUser https://ethanmriley.github.io/node-arduino-visualizer" > run.sh

chmod +x run.sh