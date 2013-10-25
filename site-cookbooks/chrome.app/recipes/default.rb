if File.exists?("/Applications/Google Chrome.app")
  Chef::Log.info "Already installed; to upgrade, remove /Applications/Google Chrome.app"
else
  directory "/Applications" do
    mode 00755
  end

  dmg_package "Google Chrome" do
    dmg_name "googlechrome"
    source "https://dl-ssl.google.com/chrome/mac/stable/GGRM/googlechrome.dmg"
    destination "/Applications"
    action :install
  end
end

