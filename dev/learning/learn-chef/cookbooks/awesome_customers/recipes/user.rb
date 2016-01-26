group node['awesome_customers']['group']

user node['awesome_customers']['user'] do
  group node['awesome_customers']['group']
  system true
  shell '/bin/bash'
end

#
# Cookbook Name:: awesome_customers
# Recipe:: user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
