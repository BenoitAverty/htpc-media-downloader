Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest:80, host:8000
  config.vm.network :public_network
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "off"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "off"]
  end

  # Share project into VM
  config.vm.synced_folder "app", "/opt/htpc-media-downloader"

  # disable default share of this box
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Install docker and docker-compose
  config.vm.provision :shell, path: "./vagrant_provision.sh"
end
