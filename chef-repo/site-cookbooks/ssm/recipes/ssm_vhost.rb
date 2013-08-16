
directory "/var/www/smartsocialmedia.com/community/current" do
	recursive true
	action :create
end

directory "/var/www/smartsocialmedia.com/community/logs" do
	action :create
end

template "/etc/apache2/sites-available/community.smartsocialmedia.com.conf" do
	source "apache/community.smartsocialmedia.com.conf.erb"
end

execute "a2ensite community.smartsocialmedia.com" do
	command "/usr/sbin/a2ensite community.smartsocialmedia.com"
	notifies :restart, resources(:service => "apache2")
end
