
package "apache2" do 
	action :install
end

package "libapache2-mod-php5" do
	action :install
end

execute "a2enmod rewrite" do 
	command "/usr/sbin/a2enmod rewrite"
end

service "apache2" do
	action :restart
end