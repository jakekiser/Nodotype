
template "/etc/apache2/sites-available/devbox.local.conf" do
	source "apache/devbox.local.conf.erb"
end

directory "/var/www/devbox.local/www/web" do
	recursive true
	action :create
end

directory "/var/www/smartsocialmedia.com/dev" do
	recursive true
	action :create
end

link "/var/www/smartsocialmedia.com/dev/web" do
	to "/vagrant/web"
	owner "vagrant"
end

# vhost for /vagrant
execute "a2ensite devbox.local" do
	command "/usr/sbin/a2ensite devbox.local"
	notifies :restart, resources(:service => "apache2")
end

execute "a2enmod vhost_alias" do
	command "/usr/sbin/a2enmod vhost_alias"
	notifies :restart, resources(:service => "apache2")
end