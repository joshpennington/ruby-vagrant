#! /usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo -e "\n--- Installing nodejs ---\n"
apt-get update > /dev/null 2>&1
apt-get -y install nodejs npm > /dev/null 2>&1

echo -e "\n--- Installing RVM/Ruby/Rails ---\n"
curl -sSL https://get.rvm.io | bash -s stable --ruby > /dev/null 2>&1
usermod -a -G rvm vagrant
source /etc/profile.d/rvm.sh
gem install rails > /dev/null 2>&1

echo "alias rs=\"rails s -b 0.0.0.0\"" > /home/vagrant/.profile
