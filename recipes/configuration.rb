#
# Cookbook Name:: httpd
# Recipe:: configuration
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
file '/var/www/html/index.html' do
  content '<h1>Welcome Home!</h1>'
end
#
#
#execute "mv /etc/httpd/conf.d/welcome.conf /etc/httpd/conf.d/welcome.conf.disabled" do
#  only_if do
#    File.exist?("/etc/httpd/conf.d/welcome.conf")
#  end
#  notifies :restart, "service[httpd]"
#end
#
#node["apache"]["sites"].each do |site_name, site_data|
#  document_root = "/srv/apache/#{site_name}"
#
#  directory document_root do
#     mode "0755"
#     recursive true
#  end
#
## Add a template for Apache virtual host configuration
# template "/etc/httpd/conf.d/#{site_name}.conf" do
# source "custom.erb"
# mode "0644"
# variables(
#   :document_root => document_root,
#   :port => site_data["port"]
# )
#
# notifies :restart, "service[httpd]"
# end
#end
