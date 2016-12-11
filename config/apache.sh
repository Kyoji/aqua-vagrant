#!/usr/bin/env bash

sudo cp /vagrant/local.aqua.dev.conf /etc/apach2/sites-available
sudo a2ensite local.aqua.dev.conf
sudo service apache2 reload