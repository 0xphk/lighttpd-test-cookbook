#
# Cookbook Name:: lighttpd
# Recipe:: default
#
# Copyright 2014, 0xphk
#
# All rights reserved - Do Not Redistribute
#

# install package 
package "lighttpd" do
	action :install
end

# use config from template
lighttpd_conf = "/etc/lighttpd/lighttpd.conf"
template lighttpd_conf do
	source "lighttpd.defconf.erb"
	user "www-data"
	group "www-data"
	mode "0640"

# start service
end
service "lighttpd" do
	action [:enable, :start]
	supports :restart => true
end

# create indexfile from template
lighttpd_index = "/var/www/index.html"
template lighttpd_index do
	source "index.html.erb"
	mode "0644"
end

# create subdir 
subdir = "/var/www/subdir"
directory subdir do
	owner "root"
	group "root"
	mode "0655"
	action :create
	not_if { ::File.exist?(subdir) }
end

# create indexfile from template
template "#{subdir}/index.html" do
	source "subdir/index.html.erb"
	mode "0644"
end