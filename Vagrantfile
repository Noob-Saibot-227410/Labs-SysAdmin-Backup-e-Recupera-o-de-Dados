Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"
    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.synced_folder ".", "/vagrant"
  
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end
  
    config.vm.provision "shell", path: "scripts/install-dependencies.sh"
    config.vm.provision "shell", path: "scripts/install-apache.sh"
    config.vm.provision "shell", path: "scripts/install-prometheus.sh"
    config.vm.provision "shell", path: "scripts/backup.sh"
    config.vm.provision "shell", path: "scripts/restore.sh"
  end  