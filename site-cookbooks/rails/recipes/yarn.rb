#
# Cookbook Name:: yarn
# Recipe:: default
#
# Copyright 2015, 
#
# All rights reserved - Do Not Redistribute
#

yum_repository "#{node['yarn']['repos']}" do
  baseurl node['yarn']['repos']

end


node['yarn']['package'].each do |package|
  package "#{package['name']}" do
    action :install
    name "#{package['name']}"
  end
end