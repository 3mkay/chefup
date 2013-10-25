dmg_package "skitch" do
  source "http://cdn1.evernote.com/skitch/mac/release/Skitch-2.6.2.zip"
  action :install
  owner node['current_user']
end
