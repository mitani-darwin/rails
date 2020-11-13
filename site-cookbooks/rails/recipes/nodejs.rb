#
# Cookbook Name:: nodejs
# Recipe:: default
#
# Copyright 2015, 
#
# All rights reserved - Do Not Redistribute
#

node['nodejs']['package'].each do |package|
  package "#{package['name']}" do
    action :install
    name "#{package['name']}"
  end
end