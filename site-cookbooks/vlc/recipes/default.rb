dmg_package "VLC" do
  source "http://mirrors.neterra.net/vlc/vlc/2.1.0/macosx/vlc-2.1.0.dmg"
  checksum vlc_checksum
  action :install
  owner node['current_user']
end
