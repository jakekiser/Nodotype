
package "apache2" do 
	action :install
end

package "libapache2-mod-php5" do
	action :install
end

service "apache2" do
	action :restart
end