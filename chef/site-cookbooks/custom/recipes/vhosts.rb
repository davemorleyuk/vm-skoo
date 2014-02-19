#include_recipe "apache2"
#
#web_app "is3" do
#	template "is3.conf.erb"
#  server_name "is3.dev"
#  server_aliases ["example.vm"]
#  allow_override "all"
#  docroot "/home/vagrant/app/www/"
#end

cookbook_file "/etc/apache2/sites-available/vhost_is3.conf" do
  source "vhost_is3.conf"
  group "root"
  owner "root"
end

execute "enable ssl" do
  command "a2enmod ssl"
end

execute "disable default site" do
  command "a2dissite default"
end

execute "enable app site" do
  command "a2ensite vhost_is3.conf"
end

service "apache2" do
  action :restart
end