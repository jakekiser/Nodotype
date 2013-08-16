# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::configure("2") do |config|

	# Virtualbox specific
	config.vm.provider "virtualbox" do |vm, override|
		# Set RAM to 1024
		vm.customize ["modifyvm", :id, "--memory", 1024]
		
		# Set box to ubuntu 12.04 x64 for virtualbox
		override.vm.box = "precise64-updated"
		override.vm.box_url = "http://files.vagrantup.com/precise64.box"
		override.vm.box_url = "https://s3-us-west-2.amazonaws.com/ssm-dev-files/vagrant/precise64-updated.box"
	end

	# VMware Fusion Specific
	config.vm.provider :vmware_fusion do |vm, override|
		# Set RAM to 1024
		vm.vmx["memsize"] = "1024"
		# Set box to ubuntu 12.04 x64 for vmware
		override.vm.box = "precise64_vmware"
		override.vm.box_url = "http://files.vagrantup.com/precise64_vmware.box"
	end

	# Networking details
	config.vm.hostname = "devbox.local"
	config.vm.network :private_network, ip: "192.168.56.150"
	config.ssh.forward_agent = true

	# Chef specific
	config.vm.provision "chef_solo" do |chef|
		chef.cookbooks_path = ["chef-repo/cookbooks", "chef-repo/site-cookbooks"]
		chef.data_bags_path = "chef-repo/data_bags"
		chef.roles_path = "chef-repo/roles"

		chef.add_role "base"
		chef.add_role "single_web"
		chef.add_role "devbox"

		chef.json = {
			"mysql" => {
				"server_root_password" => "root",
				"server_repl_password" => "root",
				"server_debian_password" => "root"
			}
		}
	end
end
