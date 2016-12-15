#
# Cookbook Name:: httpd
# Recipe:: service
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
service node['httpd']['service_name'] do
  action [:enable, :start]
end
