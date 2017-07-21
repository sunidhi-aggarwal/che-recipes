#
# Cookbook Name:: tomcatinstallation
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
puts "Installing Tomacat7!!"
cookbook_file "/tmp/tomcat7.sh" do
        source "tomcat7.sh"
        owner "root"
        group "root"
        mode 0755
end

execute "tomcat7.sh" do
        user "root"
        command "sh /tmp/tomcat7.sh"
end
