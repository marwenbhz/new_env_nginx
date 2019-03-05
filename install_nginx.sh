#!/bin/bash

sudo apt-get update
sudo apt-get -y install nginx

sudo ufw app list
sudo ufw allow 'Nginx HTTP'

systemctl status nginx

ip addr show eth0 | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'

sudo apt-get install curl
curl -4 icanhazip.com
