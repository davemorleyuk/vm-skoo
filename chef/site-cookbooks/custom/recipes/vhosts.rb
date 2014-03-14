cookbook_file "/etc/apache2/sites-available/vhost_skoo.conf" do
  source "vhost_skoo.conf"
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
  command "a2ensite vhost_skoo.conf"
end

service "apache2" do
  action :restart
end