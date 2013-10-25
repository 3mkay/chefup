dmg_package "Kindle" do
  source "http://kindleformac.amazon.com/40499/KindleForMac.dmg"
  action :install
  owner node['current_user']
end