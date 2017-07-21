#
# Cookbook Name:: javaInstallation
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
cookbook_file "/tmp/java.sh" do
	source "java.sh"
	owner "root"
  	group "root"
	mode 0755
end

execute "java.sh" do
	user "root"
	#cwd "/tmp"
	command "sh /tmp/java.sh"
	#command "sh java.sh"
end
