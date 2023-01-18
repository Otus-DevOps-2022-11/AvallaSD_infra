#!/bin/bash
sudo killall apt apt-get

sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock*
sudo dpkg --configure -a

sudo apt-get update
sudo apt-get -y install nginx

sudo mv /tmp/nginxConfig /etc/nginx/sites-available/default

sudo systemctl restart nginx
