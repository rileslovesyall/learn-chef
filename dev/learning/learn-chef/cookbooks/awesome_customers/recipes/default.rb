include_recipe 'apt::default'
include_recipe 'awesome_customers::user'
include_recipe 'firewall::default'
include_recipe 'awesome_customers::webserver'
#
# Cookbook Name:: awesome_customers
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
