yum_repository 'zend-server' do
  description "Zend Server repo"
  baseurl "baseurl=http://repos.zend.com/zend-server/6.2/rpm/noarch/"
  gpgkey 'http://repos.zend.com/zend.key'
  action :create
end