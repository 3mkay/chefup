directory "#{ENV['HOME']}/Applications" do
  mode 00755
end

unless File.exists?("#{ENV['HOME']}/Applications/1Password.app") || File.exists?("/Applications/1Password.app")

  remote_file "#{Chef::Config[:file_cache_path]}/1password.zip" do
    source "http://i.agilebits.com/dist/1P/mac4/1Password-4.0.2.zip"
  end

  execute "unzip 1password" do
    command "unzip #{Chef::Config[:file_cache_path]}/1password.zip -d #{Chef::Config[:file_cache_path]}/"
  end

  execute "copy 1password to #{ENV['HOME']}/Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/1Password.app #{Regexp.escape("#{ENV['HOME']}/Applications/1Password.app")}"
  end

  ruby_block "test to see if 1Password.app was installed" do
    block do
      raise "1Password.app was not installed" unless File.exists?("#{ENV['HOME']}/Applications/1Password.app")
    end
  end
end
