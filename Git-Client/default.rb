# Cookbook Name:: Git_Client
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

puts "Installing Git Client!!"
cookbook_file "/tmp/gitClient.sh" do
        source "gitClient.sh"
        owner "root"
        group "root"
        mode 0755
end

execute "gitClient.sh" do
        user "root"
        command "sh /tmp/gitClient.sh"
end
