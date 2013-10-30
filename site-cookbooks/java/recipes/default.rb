return unless node["platform"] == "mac_os_x"
#directory "#{ENV['HOME']}/Applications" do
#  mode 00755
#end

dmg_package "java" do
  source "http://download.oracle.com/otn-pub/java/jdk/7u45-b18/jdk-7u45-macosx-x64.dmg"
  destination "/Applications"
  dmg_name "jdk-7u45-macosx-x64"
  app "JDK 7 Update 45"
  volumes_dir "JDK 7 Update 45"
  action :install
  type "pkg"
end

