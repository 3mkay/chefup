dmg_package "expandrive" do
  source "http://downloads.expandrive.com/expandrive/v3-0-3025_published_2013-06-20_at_14_30_41/ExpanDrive.zip"
  type 'zip'
  action :install
  owner node['current_user']
end