name "base"
description "Base role for SSM servers."

run_list(
	"recipe[apt]",
	"recipe[chef-solo-search]",
	"recipe[users::sysadmins]",
	"recipe[vim]",
	"recipe[git]",
	"recipe[ntp]",
	"recipe[openssh]",
	"recipe[screen]",
	"recipe[ssh_known_hosts]",
	"recipe[root_ssh_agent::env_keep]",
	"recipe[root_ssh_agent::ppid]",
	"recipe[dotfiles]"
)

override_attributes({
	"dotfiles" => {
		"enabled_standard" => "false",
		"data_bag" => "users"
	},
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
