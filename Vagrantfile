# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "https://files.devuan.org/devuan_ascii/virtual/devuan_ascii_2.0.0_amd64_vagrant.box"
  config.ssh.username = "root"
  config.ssh.password = "toor"
  config.vm.guest = :debian
  config.vm.synced_folder "src/", "/srv/website", disabled: false
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update && apt-get install -y --no-install-recommends python3 python3-pip python3-venv emacs25-nox mc
    pip3 install -U pip && pip install wheel setuptools && pip install eggs 
    #pip install rope autopep8 flake8 jedi yapf
    mkdir /home/vagrant
  SHELL
end
