dmg_package "Vagrant" do
  source "http://files.vagrantup.com/packages/a40522f5fabccb9ddabad03d836e120ff5d14093/Vagrant-1.3.5.dmg"
  type 'pkg'
  action :install
  owner node['current_user']
end