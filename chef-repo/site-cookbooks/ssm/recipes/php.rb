
package "php5-intl" do 
	action :install
end

package "php5-mcrypt" do
	action :install
end

package "php5-memcached" do
	action :install
end

include_recipe "php::module_apc"
include_recipe "php::module_curl"
include_recipe "php::module_gd"
include_recipe "php::module_mysql"
include_recipe "php::module_sqlite3"

template "/etc/php5/apache2/php.ini" do
  cookbook "php"
  source "php.ini.erb"
  owner "root"
  group "root"
  mode "0644"
end

service "apache2" do
	action :restart
end