#
# Cookbook Name:: ruby
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
rbenv_ruby node[:ruby][:version] do
  global "true"
end
# install bundler gem
rbenv_gem "bundler" do
  ruby_version node[:ruby][:version]
end

# prepare for capistrano deployment
rbenv_gem "capistrano" do
  ruby_version node[:ruby][:version]
end
rbenv_gem "capistrano-ext" do
  ruby_version node[:ruby][:version]
end