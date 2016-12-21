# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vbox|
    vbox.memory = "2048"
    vbox.cpus   = 4
  end

  config.vm.synced_folder ".", "/vagrant", type: "rsync",
                          rsync__exclude: ".git/"

  config.vm.provision "shell", inline: <<-SHELL
    which haconiwa && exit 0

    apt-get update
    curl -s https://packagecloud.io/install/repositories/udzura/haconiwa/script.deb.sh | bash
    apt-get install haconiwa

    mkdir -p /var/log/haconiwa
    chown haconiwa: /var/log/haconiwa
  SHELL
end
