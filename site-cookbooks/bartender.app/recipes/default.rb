if File.exists?("/Applications/Bartender.app")
  Chef::Log.info "Already installed; to upgrade, remove /Applications/Bartender.app"
else
  remote_file "#{Chef::Config[:file_cache_path]}/Bartender.zip" do
    source "http://www.macbartender.com/Demo/Bartender.zip"
  end

  execute "unzip Bartender" do
    command "unzip #{Chef::Config[:file_cache_path]}/Bartender.zip -d #{Chef::Config[:file_cache_path]}/"
  end

  execute "copy Bartender to #{ENV['HOME']}/Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/Bartender.app #{Regexp.escape("#{ENV['HOME']}/Applications/Bartender.app")}"
  end

end
