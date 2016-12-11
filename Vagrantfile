# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.network :private_network, id: "aqua_primary", ip: "192.168.3.150"
  config.vm.hostname = "aqua"

  if defined?(VagrantPlugins::HostsUpdater)
    config.hostsupdater.aliases = ["local.aqua.dev"]
    config.hostsupdater.remove_on_suspend = true
  end

  config.vm.synced_folder "config/", "/srv/config/"
  config.vm.synced_folder "database/", "/srv/database/"

  config.vm.provision :shell, path: "provision.sh"

  config.vm.synced_folder "www/", "/var/www/"

  config.vm.provider :virtualbox do |vb|
    vb.name = "aqua"
  end

end