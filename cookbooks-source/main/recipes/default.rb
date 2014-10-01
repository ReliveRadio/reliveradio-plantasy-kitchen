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

# packages for reliveradio required gems
package "imagemagick"
package "libtag1-dev"

package "apache2" do
	action :remove
package "mpd"
# disable the service that is installed by the package
service "mpd" do
	action [:disable, :stop]
end