Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8888

  # Share project into VM
  config.vm.synced_folder "app", "/opt/htpc-media-downloader"

  # disable default share of this box
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Install docker and docker-compose
  config.vm.provision :shell, path: "./vagrant_provision.sh"
end
