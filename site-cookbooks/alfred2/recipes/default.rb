unless File.exists?("/Applications/Alfred 2.app")
  zip_app_package "Alfred2" do
    source "http://cachefly.alfredapp.com/Alfred_2.0.9_214.zip"
  end
end
