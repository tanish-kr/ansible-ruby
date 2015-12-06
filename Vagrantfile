# coding : utf-8
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "192.168.33.103"
  config.vm.hostname = "ruby-server"

  # virtualbox customize
  config.vm.provider "virtualbox" do |v|
    v.name = "ruby-server"
    v.memory = 2048
    v.cpus = 1
  end

  # provision ansible
  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = { user: "vagrant" }
    ansible.playbook = "ruby-playbook.yml"
  end

end
