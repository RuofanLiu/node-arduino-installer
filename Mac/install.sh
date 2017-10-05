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
sudo npm install -g --unsafe-perm node-arduino
echo "node-arduino &
firefox -P NodeUser https://github.com/RuofanLiu/node-arduino/tree/pH_better" > run.sh


