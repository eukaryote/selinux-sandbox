# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "../../repos/packer-vagrant-centos-7-1511-01-x86_64-minimal/packer-vagrant-centos-7-1511-01-minimal.box"

  #config.vm.synced_folder "./share", "/vagrant_data"

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "1024"
  end

  config.vm.provision "shell", path: "scripts/provision.sh"

end
