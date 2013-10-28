dmg_package "VLC" do
  source "http://mirrors.neterra.net/vlc/vlc/2.1.0/macosx/vlc-2.1.0.dmg"
  volumes_dir "vlc-2.1.0"
  action :install
  owner node['current_user']
end
