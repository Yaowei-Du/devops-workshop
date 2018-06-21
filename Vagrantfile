# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "workshop"

  config.vm.box_check_update = false
  config.vm.network :forwarded_port, guest: 3306, host: 13306
  config.vm.network :forwarded_port, guest: 8080, host: 18080
  config.vm.network :forwarded_port, guest: 22, host: 2322, host_ip: "0.0.0.0", id: "ssh"

  config.ssh.insert_key = false
  config.ssh.forward_agent = true
  config.ssh.password = "vagrant"
  config.vm.synced_folder "./", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
end
