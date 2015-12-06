# coding: utf-8

require "spec_helper"

describe package("gcc"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("gcc-c++"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("openssl-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("libyaml-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("readline-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("zlib-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("libffi-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("libxml2-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe package("libxslt-devel"), :if => os[:family] == "redhat" do
  it { should be_installed }
end

describe command("which ruby") do
  let(:disable_sudo) { true }
  its(:stdout) { should match /\/usr\/local\/bin\/ruby/ }
end

describe command("ruby -v") do
  let(:disable_sudo) { true }
  let(:roles_var) { YAML.load(IO.read(File.expand_path('../../../roles/ruby/vars/main.yml', __FILE__))) }
  its(:stdout) { should match /#{roles_var["version"]}/ }
end
