dmg_package "Firefox" do
  source "http://wpc.1237.edgecastcdn.net/801237/download.cdn.mozilla.net/pub/mozilla.org/firefox/releases/24.0/mac/en-GB/Firefox%2024.0.dmg"
  #checksum "4848df9d4ce810bea0fc27ed4766bbfffe6afac184c601b07931da86b028720c"
  action :install
  owner node['current_user']
end
