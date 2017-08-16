#!/usr/bin/env bash

sudo apt-get -y install python3-pip
sudo apt-get -y install nginx

cd /vagrant/cat-wow
python3 -m pip install -r requirements.txt

nohup ./bin/cat_wow &

