# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.ssh.insert_key = false

  config.vm.define "pipelines" do |pipelines|
    pipelines.vm.box = "shekeriev/centos-stream-9"
    pipelines.vm.hostname = "pipelines.do1.exam"
    pipelines.vm.network "private_network", ip: "192.168.100.201"
    pipelines.vm.provision "shell", path: "add-hosts.sh"
    #pipelines.vm.provision "shell", path: "spec-firewall/firewall-pipelines.sh"
    pipelines.vm.provision "shell", path: "firewall-stop.sh"

    pipelines.vm.provision "shell", path: "services/add-git.sh"
    pipelines.vm.provision "shell", path: "services/add-java.sh"

    pipelines.vm.provision "shell", path: "services/add-jenkins.sh"
    pipelines.vm.provision "shell", path: "services/add-beat.sh"

    pipelines.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 1
    end
  end

  config.vm.define "containers" do |containers|
    containers.vm.box = "shekeriev/centos-stream-9"
    containers.vm.hostname = "containers.do1.exam"
    containers.vm.network "private_network", ip: "192.168.100.202"
    containers.vm.provision "shell", path: "add-hosts.sh"
    #containers.vm.provision "shell", path: "spec-firewall/firewall-containers.sh"
    containers.vm.provision "shell", path: "firewall-stop.sh"

    containers.vm.provision "shell", path: "services/add-docker.sh"
    containers.vm.provision "shell", path: "services/add-git.sh"
    containers.vm.provision "shell", path: "services/add-java.sh"

    containers.vm.provision "shell", path: "services/add-beat.sh"
    #containers.vm.provision "shell", path: "add-gitea.sh" -- not working; Should be added manually
  

    containers.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 1
    end
  end

  config.vm.define "monitoring" do |monitoring|
    monitoring.vm.box = "shekeriev/centos-stream-9"
    monitoring.vm.hostname = "monitoring.do1.exam"
    monitoring.vm.network "private_network", ip: "192.168.100.203"
    monitoring.vm.network "forwarded_port", guest: 5601, host: 8082
    monitoring.vm.provision "shell", path: "add-hosts.sh"
    #monitoring.vm.provision "shell", path: "spec-firewall/firewall-monitoring.sh"
    monitoring.vm.provision "shell", path: "firewall-stop.sh"

    monitoring.vm.provision "shell", path: "services/add-git.sh"
    monitoring.vm.provision "shell", path: "services/add-java.sh"

    monitoring.vm.provision "shell", path: "services/add-elastic-stack.sh"

    monitoring.vm.provider "virtualbox" do |v|
      v.gui = false
      v.memory = 4096
      v.cpus = 1
    end
  end
  

end
