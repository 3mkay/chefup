dmg_package "Sonos" do
  source "http://update.sonos.com/software/mac/mdcr/SonosDesktopController42.dmg"
  accept_eula true
  action :install
  owner node['current_user']
end
