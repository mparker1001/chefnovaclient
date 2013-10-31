#
# Cookbook Name:: .
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
include_recipe "apt"
include_recipe "python::pip"
 
%w{git python-dev build-essential}.each do |pkg|
package pkg do
action :install
end
end
 
python_pip "rackspace-novaclient" do
action :install
end

python_pip "git+git://github.com/major/supernova.git" do
action :install
end
 
template "/home/vagrant/.supernova" do
source "supernova.erb"
mode 0600
owner "vagrant"
group "vagrant"
end
