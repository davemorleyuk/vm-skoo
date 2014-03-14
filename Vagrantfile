# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "debian64-6.0.7"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/debian-607-x64-vbox4210.box"
  
	config.vm.network :private_network, ip: "192.168.56.20"
  config.vm.network "forwarded_port", guest: 3306, host: 33020
	
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end	
  
  config.vm.synced_folder "../../PROJECTS/aspin_api", "/home/vagrant/aspin_api"
  config.vm.synced_folder "../../PROJECTS/aspin_client", "/home/vagrant/aspin_client"

  config.vm.provision :chef_solo do |chef|
    chef.roles_path = "./chef/roles"
    chef.cookbooks_path = ["./chef/site-cookbooks", "./chef/cookbooks"]
    chef.add_role "vagrant-test-box"
  end

end