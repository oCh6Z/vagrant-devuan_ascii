# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "https://files.devuan.org/devuan_ascii/virtual/devuan_ascii_2.0.0_amd64_vagrant.box"
  config.ssh.username = "root"
  config.ssh.password = "toor"
  config.vm.guest = :debian
  config.vm.synced_folder "src/", "/srv/website", disabled: false
  config.vm.provision "shell", path: "scripts/init.sh"
end
