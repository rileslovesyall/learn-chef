# Install Apache and start the service

httpd_service 'customers' do
  mpm 'prefork'
  action [:create, :start]
end

# Add the site configuration
httpd_config 'customers' do
  instance 'customers'
  source 'customers.conf.erb'
  notifies :restart, 'httpd_service[customers]'
end

# Create the document root directory
directory '/var/www/customers/public_html' do
  recursive true
end

# Write default home page
file '/var/www/customers/public_html/index.php' do
  content '<html>This is a placeholder</html>'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end

# Open port 80 to incoming traffic.
firewall_rule 'http' do
  port 80
  protocol :tcp
  action :allow
end

#
# Cookbook Name:: awesome_customers
# Recipe:: webserver
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
