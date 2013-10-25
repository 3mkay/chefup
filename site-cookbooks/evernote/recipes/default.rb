dmg_package "Evernote" do
  volumes_dir "Evernote"
  source "http://cdn1.evernote.com/mac/release/Evernote_402146.dmg"
  accept_eula true
  action :install
  owner node['current_user']
end
