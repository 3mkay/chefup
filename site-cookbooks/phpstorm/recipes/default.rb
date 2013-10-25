dmg_package "PhpStorm" do
  source "http://download.jetbrains.com/webide/PhpStorm-7.0.dmg"
  action :install
  owner node['current_user']
end