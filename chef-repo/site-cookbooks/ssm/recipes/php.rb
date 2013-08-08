
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

service "apache2" do
	action :restart
end