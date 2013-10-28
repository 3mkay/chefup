#directory "/Applications" do
#  mode 00755
#end

unless File.exists?("/Applications/1Password 4.app")

  remote_file "#{Chef::Config[:file_cache_path]}/1password.zip" do
    source "http://i.agilebits.com/dist/1P/mac4/1Password-4.0.2.zip"
  end

  unless File.exists?("#{Chef::Config[:file_cache_path]}/1Password 4.app")
    execute "unzip 1password" do
      command "unzip #{Chef::Config[:file_cache_path]}/1password.zip -d #{Chef::Config[:file_cache_path]}/"
    end
  end

  execute "copy 1password to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/#{Regexp.escape("1Password 4.app")} #{Regexp.escape("/Applications/1Password 4.app")}"
  end

  ruby_block "test to see if 1Password.app was installed" do
    block do
      raise "1Password.app was not installed" unless File.exists?("/Applications/1Password 4.app")
    end
  end
end
