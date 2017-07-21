#
# Cookbook Name:: jenkinsInstallation
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

puts "Installing Jenkins!!"
cookbook_file "/tmp/jenkins.sh" do
	source "jenkins.sh"
	owner "root"
  	group "root"
	mode 0755
end

execute "jenkins.sh" do
	user "root"
	command "sh /tmp/jenkins.sh"
end
