template "#{ENV['HOME']}/.bashrc.d/chefup-bin.sh" do
  source "chefup-bin.sh.erb"
  variables :chefup_bin_path => File.expand_path("../../../bin", File.dirname(__FILE__))
end
