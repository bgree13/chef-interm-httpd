# # encoding: utf-8

# Inspec test for recipe httpd::default

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html


describe port(80) do
  it { should be_listening }
  skip 'This is an example test, replace with your own test.'
end

describe package('httpd') do
  it { should be_installed }
end

describe command('curl http://localhost') do
  its(:stdout) { should match(/Welcome Home/) }
end
