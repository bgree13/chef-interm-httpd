#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
#
#require 'pry'
#binding.pry
include_recipe 'httpd::install'
include_recipe 'httpd::configuration'
include_recipe 'httpd::service'
