dmg_package "textwrangler" do
  source "http://ash.barebones.com/TextWrangler_4.5.3.dmg"
  volumes_dir "TextWrangler 4.5.3"
  action :install
  owner node['current_user']
end
