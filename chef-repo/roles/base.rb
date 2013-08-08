name "base"
description "Base role for SSM servers."

run_list(
	"recipe[apt]",
	"recipe[chef-solo-search]",
	"recipe[users::sysadmins]",
	"recipe[vim]",
	"recipe[ntp]",
	"recipe[openssh]",
	"recipe[ssh_known_hosts]"
)

override_attributes({
	"openssh" => {
		"server" => {
			"password_authentication" => "no",
			"permit_root_login" => "no",
			"allow_tcp_forwarding" => "no",
			"permit_tunnel" => "no",
			"Subsystem" => "sftp /usr/lib/sftp-server"
		}
	}	
})