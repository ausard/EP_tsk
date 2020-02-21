
BOX_BASE = ENV['VAGRANT_RELEASE']

Vagrant.configure("2") do |config|

  config.vm.network :forwarded_port, host: 8080, guest: 8080

  config.vm.define "vm01" do |vm01|
    vm01.vm.box = BOX_BASE
    vm01.vm.hostname = "vm01"
    vm01.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
    end  
  end

  if BOX_BASE == "ubuntu/bionic64" || BOX_BASE == "ubuntu/xenial64"
    config.vm.provision "shell" do |shell|
      shell.inline = "which python || sudo apt -y install python"
    end
  end

  if BOX_BASE == "centos/7"
    config.vm.provision "shell" do |shell|
      shell.inline = "which python || sudo yum -y install python"
    end
  end  

  config.vm.provision "ansible_local" do |ansible|
    ansible.inventory_path = "ansible/inventory"
    ansible.playbook = "ansible/playbook.yml"    
  end
end
