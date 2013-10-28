#unless File.exists?(/Applications/
dmg_package "LibreOffice" do
  source "http://download.documentfoundation.org/libreoffice/stable/4.1.2/mac/x86/LibreOffice_4.1.2_MacOS_x86.dmg"
#  type 'dmg'
  action :install
  owner node['current_user']
end
