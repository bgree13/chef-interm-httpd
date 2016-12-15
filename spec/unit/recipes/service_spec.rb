#
# Cookbook Name:: httpd
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::service' do
  context 'When all attributes are default, on CentOS' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

   it 'starts the appropriate service' do
     expect(chef_run).to start_service('httpd')
    end

   it 'enables the appropriate service' do
     expect(chef_run).to enable_service('httpd')
    end
  end

  context 'When all attributes are default, on Ubuntu' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
      runner.converge(described_recipe)
    end

   it 'starts the appropriate service' do
     expect(chef_run).to start_service('apache2')
    end

   it 'enables the appropriate service' do
     expect(chef_run).to enable_service('apache2')
    end
  end
end
