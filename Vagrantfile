# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "wvera/sles12sp1"

  config.vm.box_check_update = false
  config.vm.network :forwarded_port, guest: 80, host: 18080
  config.vm.network :forwarded_port, guest: 22, host: 2322, host_ip: "0.0.0.0", id: "ssh"

  config.ssh.insert_key = false
  config.ssh.forward_agent = true
  config.ssh.password = "vagrant"
  config.vm.synced_folder "./", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
end