#!/usr/bin/env bash

# install node and npm
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# install nginx and start
sudo apt-get -y install nginx
sudo service nginx start

# copy the nginx configuration file (in this repo)
sudo cp /vagrant/nginx.conf /etc/nginx/sites-available/site.conf
sudo chmod 644 /etc/nginx/sites-available/site.conf
sudo ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site.conf
sudo service nginx restart

# clean /var/www to remove the default files nginx creates at installation
sudo rm -Rf /var/www

# symlink /var/www to /vagrant
ln -s /home/vagrant/webapp /var/www

chgrp -R vagrant /var/log/nginx
chmod -R 755 /var/log/nginx


