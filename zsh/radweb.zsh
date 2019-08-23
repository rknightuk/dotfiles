alias dbd="./devbuild && ./deploy"

# Git
alias gup='git fetch origin && grb origin/$(git_current_branch)' # gup instead of gpl
alias grb='git rebase -p'

# Tail Today's FuelPHP App Log
alias fuellog="laralog"

function awsenv() {
    profile=$1

    export AWS_ACCESS_KEY_ID=$(aws configure get "$profile.aws_access_key_id")
    export AWS_SECRET_ACCESS_KEY=$(aws configure get "$profile.aws_secret_access_key")

    echo "Prepared environment for AWS profile: $profile"
}

function laralog() {
	base="storage/logs/"laravel-`eval date +%Y`"-"`eval date +%m`"-"`eval date +%d`".log"
	if [ $# -eq 0 ]
	then
		/usr/local/bin/grc -es --colour=auto tail -f $base
	else
		search="> $@"
		/usr/local/bin/grc -es --colour=auto tail -f $base | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} --line-buffered "$search"
	fi
}
