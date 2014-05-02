# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. 
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.provision :shell, :path => "vagrant/bootstrap.sh"

  # forward port 9000 for the server
  config.vm.network :forwarded_port, host: 9000, guest: 9000

  # forward port 8081 for node-inspector based debugging (attach to 8080 in the VM)
  config.vm.network :forwarded_port, host: 8081, guest: 8080
end
