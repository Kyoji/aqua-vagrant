#!/usr/bin/env bash


# Run apt-get updates and repository additions
sudo sh /srv/config/apt-get_update.sh

# Run apache2 config
sudo sh /srv/config/apache.sh

# Run apt-get installations
sudo sh /srv/config/apt-get_installs.sh

# Run mysql commands
sudo sh /srv/config/mysql.sh

# Mount vagrant folder to www for now
#if ! [ -L /var/www ]; then
#sudo rm -rf /var/www
#sudo ln -fs /vagrant /var/www
#fi