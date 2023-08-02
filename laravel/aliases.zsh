function laralog() {
	base="storage/logs/laravel.log"
	if [ $# -eq 0 ]
	then
		tail -f $base
	else
		search="> $@"
		tail -f $base | grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} --line-buffered "$search"
	fi
}

function sail()
{
	CUSTOM=./bin/sail
	COMPOSER=./vendor/bin/sail
	DC=./docker-compose.yml
	if test -f "$CUSTOM"; then
		./bin/sail "$@"
	elif test -f "$COMPOSER"; then
		./vendor/bin/sail "$@"
	elif [ -e "$DC" ]; then
		docker compose "$@"
	else
		echo 'No sail or docker-compose.yml file found 🚣‍♂️'
	fi
}