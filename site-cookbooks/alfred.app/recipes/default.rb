if File.exists?("/Applications/Alfred 2.app")
  Chef::Log.info "Already installed; to upgrade, remove /Applications/Alfred 2.app"
else
  directory "/Applications" do
    mode 00755
  end

  dmg_package "Alfred" do
    volumes_dir "Alfred.app"
    destination "/Applications"
    source "http://cachefly.alfredapp.com/Alfred_2.0.9_214.zip"
    action :install
  end
end

