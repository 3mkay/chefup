dmg_package "bettertouchtool" do
  source "http://boastr.net/releases/BetterTouchTool.zip"
  type "zip"
  action :install
  owner node['current_user']
end
