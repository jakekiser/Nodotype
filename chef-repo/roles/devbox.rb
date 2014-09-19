name "devbox"
description "This is the devbox role"

run_list(
	"recipe[ssm::apache2_devbox]"
)
