#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# install some packages for daily work
package "vim"
package "screen"
package "tmux"
package "htop"
package "imagemagick"
package "libtag1-dev"

package "apache2" do
	action :remove
end

# create server config template in nginx config directory
template "#{node.nginx.dir}/sites-available/#{node.app.name}" do
  source "plantasy.erb"
  mode 0644
  owner "root"
  group "root"
end

# symlink the config to the active sites directory
link "#{node.nginx.dir}/sites-enabled/#{node.app.name}" do
  to "#{node.nginx.dir}/sites-available/#{node.app.name}"
end