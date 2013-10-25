dmg_package 'Google Voice and Video' do
  source "https://dl.google.com/googletalk/googletalkplugin/GoogleVoiceAndVideoSetup.dmg"
  type 'dmg'
  action :install
  owner node['current_user']
end
