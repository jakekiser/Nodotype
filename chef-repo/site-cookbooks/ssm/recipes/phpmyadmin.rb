# taken from http://drupalcode.org/project/vagrant.git/tree/1d6b88af73d78d91076b11b065156596230074cd:/drupal-chef/cookbooks/drupal-cookbooks/phpmyadmin

directory "/etc/dbconfig-common/" do
  action :create
  recursive true
end

template "/etc/dbconfig-common/phpmyadmin.conf" do
  source "phpmyadmin/phpmyadmin.conf.erb"
  mode "0660"
end

package "phpmyadmin" do
	action :install
end

template "/etc/apache2/conf-available/phpmyadmin.conf" do
  source "phpmyadmin/vhost.conf.erb"
  mode "0660"
end

template "/etc/phpmyadmin/apache.conf" do
  source "phpmyadmin/apache.conf.erb"
  mode "0660"
end

template "/etc/phpmyadmin/config-db.php" do
  source "phpmyadmin/config-db.php.erb"
  mode "0660"
  variables(:password => node[:mysql][:server_root_password], :username => 'root', :host => '127.0.0.1' )
end

execute "a2enconf phpmyadmin" do
	command "/usr/sbin/a2enconf phpmyadmin"
end

service "apache2" do
	action :restart
end