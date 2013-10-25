dmg_package "Asepsis" do
  source "http://downloads.binaryage.com/Asepsis-1.3.1.dmg"
  action :install
  owner node['current_user']
end
