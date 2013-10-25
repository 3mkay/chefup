dmg_package "Opera" do
  source "http://get.geo.opera.com/pub/opera/desktop/17.0.1241.53/mac/Opera_17.0.1241.53_Setup.dmg"
  accept_eula true
  action :install
  owner node['current_user']
end