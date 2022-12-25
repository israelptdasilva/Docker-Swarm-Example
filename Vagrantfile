Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian10"
  config.vm.box_check_update = true 
  config.vm.provision "shell", path: "./config/docker_debian.sh"

  mask = "192.168.33."
  host = 2

  config.vm.define "manager" do |node|
    node.vm.hostname = "manager"
    node.vm.network "private_network", ip: "#{mask}#{host}"
    node.vm.synced_folder "./services", "/home/vagrant/services"
    config.vm.provision "shell", path: "./config/manager_setup.sh"
  end
 
  config.vm.define "worker1" do |node|
    node.vm.hostname = "worker1"
    node.vm.network "private_network", ip: "#{mask}#{host + 1}"
  end

  config.vm.define "worker2" do |node|
    node.vm.hostname = "worker2"
    node.vm.network "private_network", ip: "#{mask}#{host + 2}"
  end
end
