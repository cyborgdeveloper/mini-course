Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.provision "shell", path: "provision.sh"
  config.vm.network "forwarded_port", guest: 8080, host: 8080, id: "tomcat"
  config.vm.synced_folder ".", "/vagrant", type: "rsync"
end
