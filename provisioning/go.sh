#!/usr/bin/env bash

# apt packages
sudo apt-get -y install python3-pip
sudo apt-get -y install nginx

# global pip packages
python3 -m pip install uwsgi
mkdir -p /var/log/uwsgi

# app set up
mkdir -p /var/www/cat-wow
cp -r /vagrant/cat-wow/. /var/www/cat-wow
cd /var/www/cat-wow
python3 -m pip install -r requirements.txt

rm /etc/nginx/sites-enabled/default
ln -s /var/www/cat-wow/cat_wow.nginx.conf /etc/nginx/sites-enabled/default
ln -s /var/www/cat-wow/cat_wow.init.conf /etc/init/cat_wow.conf

# bounce services
sudo initctl reload-configuration
sudo service cat_wow start
sudo service nginx restart
