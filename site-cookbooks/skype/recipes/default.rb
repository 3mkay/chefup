dmg_package "Skype" do
  source "http://download.skype.com/macosx/Skype_6.9.0.517.dmg"
  owner node['current_user']
  action :install
end
