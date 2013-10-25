dmg_package "totalterminal" do
  source "http://downloads.binaryage.com/TotalTerminal-1.3.dmg"
  action :install
  owner node['current_user']
end
