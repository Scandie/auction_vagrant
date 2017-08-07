# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(2) do |config|
  config.vm.box = "fedora/25-cloud-base"
  config.vm.box_version = "20161122"

  config.vm.hostname = 'auction'

  config.vm.network "public_network", ip: "192.168.0.89"
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = "2"
    vb.memory = "1024"
  end

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "initial_build.yml"
    ansible.inventory_path = "./hosts"
    ansible.limit = "all"
  end
end
