dmg_package "textwrangler" do
  source "http://ash.barebones.com/TextWrangler_4.5.3.dmg"
  action :install
  owner node['current_user']
end
