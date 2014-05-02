#!/usr/bin/env bash

# system and apps
apt-get update
apt-get dist-upgrade
apt-get install -y vim build-essential curl git-core libssl-dev htop redis-server ruby-full rubygems1.8

#sass and compass
gem install sass
gem install compass

# user login shell initialization script
cp /vagrant/vagrant/bash_profile /home/vagrant/.profile

# nvm, node
mkdir mainline
cd mainline
git clone https://github.com/creationix/nvm.git
. nvm/nvm.sh
nvm install 0.10

# npm global installs
npm install --global grunt-cli mocha karma-cli bower node-inspector

# build app dependencies
cd /vagrant
npm install
