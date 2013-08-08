
apt_repository "ondrej" do	
	uri "http://ppa.launchpad.net/ondrej/apache2/ubuntu"
	distribution node['lsb']['codename']
	components ["main"]
	keyserver "keyserver.ubuntu.com"
	key "E5267A6C"
end

apt_repository "ondrej" do	
	uri "http://ppa.launchpad.net/ondrej/php5/ubuntu"
	distribution node['lsb']['codename']
	components ["main"]
	keyserver "keyserver.ubuntu.com"
	key "E5267A6C"
end
