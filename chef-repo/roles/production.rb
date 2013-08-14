name "production"
description "Production role"

run_list(
	"recipe[chef-duo-unix]"
)
