#include_recipe "zendserver"

cookbook_file "/etc/yum.repos.d/zend.repo" do
  source "zend.repo"
  group "root"
  owner "root"
end








#5.3 or 5.4
#execute "install zend server" do
#	command "yum -y install zend-server-php-5.3"
#end

#execute "update apache2 log folder permissions" do
#  command "sudo chmod +x /var/log/httpd"
#end

#execute "update apache2 log file permissions" do
#	command "sudo chmod 644 /var/log/httpd/error.log /var/log/httpd/access.log"
#end