dmg_package "SugarSync" do
  source "https://www.sugarsync.com/downloads/InstallSugarSync.dmg"
  volumes_dir "Install SugarSync"
  action :install
  owner node['current_user']
end
