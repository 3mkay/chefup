dmg_package "carboncopycloner" do
  source "http://files.bombich.com/ccc-3.5.3.zip"
  type "zip"
  action :install
  owner node['current_user']
end
