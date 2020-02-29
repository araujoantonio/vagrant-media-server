# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  # Box Settings
  config.vm.box = "generic/ubuntu1804"

  # Provider Settings
  config.vm.provider "virtualbox" do |vb|
    # vb.memory = 2048
    # vb.cpus = 4
  end

  # Network Settings
  config.vm.network "public_network",  ip: "192.168.1.99", bridge: "en1"
  config.vm.network "forwarded_port", guest: 80, host: 8081
  config.vm.network "forwarded_port", guest: 445, host: 4450

  # Folder Settings
  config.vm.synced_folder "D:/vagrant/", "/home/vagrant/"
  config.vm.synced_folder "D:/nextcloud-vagrant-test/", "/var/www/"
  
  # Provisioning Samba folders
  config.vm.synced_folder "E:/time_machine", "/home/vagrant/sambashare/"
  config.vm.provision :file, source: './smb.conf', destination: '/home/vagrant/smb.conf'
  
  # Configuring Plex folders
  config.vm.synced_folder "D:/media/", "/home/vagrant/media/"
  config.vm.synced_folder "D:/yoga/", "/home/vagrant/yoga/"
  
  # Configuring machine
  config.vm.provision "shell", path: "init.sh"

end
