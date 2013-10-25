dmg_package "SugarSync" do
  source "https://www.sugarsync.com/downloads/InstallSugarSync.dmg"
  action :install
  owner node['current_user']
end
