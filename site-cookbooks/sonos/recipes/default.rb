dmg_package "Sonos" do
  source "http://update.sonos.com/software/mac/mdcr/SonosDesktopController42.dmg"
  action :install
  owner node['current_user']
end