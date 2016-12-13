#!/usr/bin/env bash

sudo cp /srv/config/apache/local.aqua.dev.conf /etc/apache2/sites-available/
sudo a2ensite local.aqua.dev.conf
sudo service apache2 reload
#if [ -d /var/www/html ]; then
#    sudo rm -r /var/www/html
#fi