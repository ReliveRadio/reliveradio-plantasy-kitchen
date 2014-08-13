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

package "apache2" do
	action :remove
end