# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "sl-6.4"
  config.vm.box_url = "http://lyte.id.au/vagrant/sl6-64-lyte.box"

  config.vm.define :manage do |c|
    c.vm.hostname = 'manage.hifumi.dev'
    c.vm.network :private_network, ip: '10.0.0.2'
  end

  config.vm.define :sc do |c|
    c.vm.hostname = 'sc.hifumi.dev'
    c.vm.network :private_network, ip: '10.0.0.3'
  end

end
