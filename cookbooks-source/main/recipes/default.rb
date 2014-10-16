#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# packages for curl gem dependencies
package "libcurl3"
package "libcurl3-gnutls"
package "libcurl4-openssl-dev"
package "libcurl4-gnutls-dev"
# package for sqlite3 gem dependencies
package "libsqlite3-dev"

# install some packages for daily work
package "vim"
package "screen"
package "tmux"
package "htop"
package "mosh"

# packages for reliveradio required gems
package "imagemagick"
package "libtag1-dev"

package "icecast2"

# remove apache if it was preinstalled on the vps image
package "apache2" do
	action :remove
end

# remove postfix if it was preinstalled on the vps image
package "postfix" do
	action :remove
end


package "mpd"
# disable the service that is installed by the package
service "mpd" do
	action [:disable, :stop]
end
