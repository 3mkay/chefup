dmg_package "package_name" do
  source "http:// .dmg"
  action :install
  owner node['current_user']
  accept_eula true
end