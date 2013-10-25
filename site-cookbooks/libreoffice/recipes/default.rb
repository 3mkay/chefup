dmg_package "LibreOffice" do
  source "https://donate.libreoffice.org/home/dl/mac-x86/4.1.2/en-US/LibreOffice_4.1.2_MacOS_x86.dmg"
  type 'dmg'
  action :install
  owner node['current_user']
end