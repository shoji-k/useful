VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "public_network", ip: "192.168.33.10", bridge: "wlan0"

  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.network "forwarded_port", guest: 3306, host: 3306

  config.vm.synced_folder ".", "/vagrant",
      #type: "rsync",
      owner: "vagrant",
      group: "www-data",
      mount_options: ['dmode=775','fmode=775']

  config.vm.provision "ansible" do |ansible|
    ansible.limit = "all"
    ansible.inventory_path = "/home/user/ws/repos/useful/playbooks/mine/hosts"
    ansible.playbook = "/home/user/ws/repos/useful/playbooks/mine/site.yml"
  end

end
