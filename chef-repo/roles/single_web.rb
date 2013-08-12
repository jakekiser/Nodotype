name "single_web"
description "Single web server role."

run_list(
	"recipe[imagemagick]",
	"recipe[ssm::ondrej]",
	"recipe[ssm::apache2]",
	"recipe[mysql]",
	"recipe[mysql::server]",
	"recipe[php]",
	"recipe[ssm::php]",
	"recipe[ssm::phpmyadmin]"
)

override_attributes({
	"php" => {
		"directives" => {
			"short_open_tag" => "on",
			"date.timezone" => "America/Chicago"
		}
	}
})